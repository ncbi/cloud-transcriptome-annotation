import os
import re
import json
import pandas
import time
import math
import pickle
import zipfile
import uuid
import gzip
import distutils.spawn
import numpy as np
import scipy.stats as stats
import seaborn as sns
import locale

from Bio import SeqIO
from datetime import datetime
import networkx as nx

from IPython.display import display

import matplotlib
import matplotlib.pyplot as plt
import matplotlib.patches as patches
import matplotlib.lines as lines

from matplotlib import font_manager as fm, rcParams

from IPython.display import HTML
from IPython.display import display, Markdown, Latex

###############################################################
#
#    Project global paths
#
###############################################################

WORKDIR = os.path.dirname(os.path.abspath(os.path.dirname(__file__)))
CONFIG = os.path.join(WORKDIR,'config')
DOC = os.path.join(WORKDIR,'doc')
DATA = os.path.join(WORKDIR,'data')
BIN = os.path.join(WORKDIR,'bin')
RESULTS = os.path.join(WORKDIR,'results')
NOTEBOOKS = os.path.join(WORKDIR,'notebooks')
SRC = os.path.join(WORKDIR,'src')
TMP = os.path.join(WORKDIR,'tmp')

###############################################################
#
#    Dataset (experiment) to analyze
#
# The path is $WORKDIR/data/$DATASET
#
# To use multiple datasets (experiments) this variable should be overwritten
# in the notebooks
#
###############################################################

DATASET = 'PRJNA320545'


###############################################################
#
#    Utils functions
#
###############################################################

def hide_code_str():
    """
    Print an HTML code to hide python code in Jupyter notebooks
    :return: String
    """
    return '''
    <script>
        code_show=true;
        function code_toggle() {
            if (code_show){
                $('div.input').hide();
                $('#hide_show_buttom').html("Show Code");
            } else {
                $('div.input').show();
                $('#hide_show_buttom').html("Hide Code");
            }
            code_show = !code_show
        }
        $( document ).ready(code_toggle);
    </script>
    <button id="hide_show_buttom" onclick="code_toggle()" style="float: right;"></button>
    '''

def getFileName():
    id = str(uuid.uuid4())
    query = id + '.fa'
    while os.path.exists(query):
        id = str(uuid.uuid4())
        query = id + '.fa'  
    return query

def getActionTime(data, actionId):
    ts = None
    te = None
    for l in data:
        if 'containerStarted' in l:
            if l['containerStarted']['actionId'] == actionId:
                ts = datetime.strptime(l['timestamp'].split('.')[0], "%Y-%m-%dT%H:%M:%S")
        if 'containerStopped' in l:
            if l['containerStopped']['actionId'] == actionId:
                te = datetime.strptime(l['timestamp'].split('.')[0], "%Y-%m-%dT%H:%M:%S")
        if ts and te:
            return te - ts
    return None

def get_gpc_starttimestamp(logs):
    ts = ""
    for e in logs['metadata']['events']:
        if 'workerAssigned' in e and 'machineType' in e['workerAssigned']:
            ts = e['timestamp']
            break
    return ts

def parse_gcp_json(logs, f):
    if 'done' in logs and logs['done'] == True:
#             ts = datetime.strptime(logs['metadata']['createTime'].split('.')[0], "%Y-%m-%dT%H:%M:%S")
        ts = get_gpc_starttimestamp(logs)
        ts = datetime.strptime(ts.split('.')[0], "%Y-%m-%dT%H:%M:%S")
        te = datetime.strptime(logs['metadata']['endTime'].split('.')[0], "%Y-%m-%dT%H:%M:%S")
        elapsed = te - ts
        blastdb = getActionTime(logs['metadata']['events'], 3)
        cwl = getActionTime(logs['metadata']['events'], 6)
        return [f, elapsed, blastdb, cwl]
    return []

def timeInSeconds(s):
    fields = s.split('m')
    return (int(fields[0]) * 60 + float(fields[1].split('s')[0]))/60 

def aws_log_times(events):
    blast = 0
    cwl = 0
    for ev in events:
        if ev['message'] == 'Copying BlastDB':
            s = ev['timestamp']
        if ev['message'] == 'Copying sample fasta':
            blast = (ev['timestamp'] - s)/(1000*60)
        if ev['message'] == 'Running CWL workflow':
            s = ev['timestamp']
        if ev['message'] == 'Copying results to the S3':
            cwl = (ev['timestamp'] - s)/(1000*60)
    return blast, cwl

def aws_log_completed(events):
    for ev in events:
        if ev['message'].startswith('Error'):
            return False
    return True

def create_comp_env_dict(name, CPUs, machine_type, AMI, subnet_id, sg_id, batchRoleArn, tags = None, key=None):
    if os.path.exists(os.path.join(CONFIG, "aws", "compute-env-template.json")):
        comp_env_templatefile = os.path.join(CONFIG, "aws", "compute-env-template.json")
        with open(comp_env_templatefile) as fin:
            comp_env = json.loads(fin.read())
            comp_env['computeEnvironmentName'] = name
            comp_env['computeResources']['imageId'] = AMI
            comp_env['computeResources']['maxvCpus'] = CPUs * 40
            comp_env['computeResources']['instanceTypes'].append(machine_type)
            comp_env['computeResources']['subnets'].append(subnet_id)
            comp_env['computeResources']['securityGroupIds'].append(sg_id)
            if key:
                comp_env['computeResources']['ec2KeyPair'] = key
            if tags:
                ts = {}
                for t in tags:
                    ts[t['Key']] = t['Value']
                comp_env['computeResources']['tags']  = ts
            comp_env['serviceRole'] = batchRoleArn
            with open(os.path.join(CONFIG, "aws", 'compute-env-{}.json'.format(name)), 'w') as fout:
                fout.write(json.dumps(comp_env, indent=4))
