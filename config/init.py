import os
import re
import json
import pandas
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

locale.setlocale(locale.LC_ALL, 'en_US')
font = {'family' : 'Times New Roman',
        'size'   : 14}

matplotlib.rc('font', **font)

###############################################################
#
#    Project global paths
#
###############################################################

WORKDIR = os.path.dirname(os.path.abspath(os.path.dirname(__file__)))
CONFIG = os.path.join(WORKDIR,'config')
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
