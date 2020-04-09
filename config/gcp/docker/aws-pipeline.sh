#!/usr/bin/env bash

# Check what environment variables are set
if [ -z "${AWS_ACCESS_KEY_ID}" ]; then
  echo "AWS_ACCESS_KEY_ID not set"
  exit 1
fi

if [ -z "${AWS_SECRET_ACCESS_KEY}" ]; then
  echo "AWS_SECRET_ACCESS_KEY not set"
  exit 1
fi

if [ -z "${CPUs}" ]; then
  echo "CPUs not set"
  exit 1
fi

if [ -z "${SAMPLE}" ]; then
  echo "SAMPLE not set"
  exit 1
fi

if [ -z "${INBUCKET}" ]; then
  echo "INBUCKET not set. No object to download."
  exit 1
fi

if [ -z "${OUTBUCKET}" ]; then
  echo "OUTBUCKET not set. No object to download."
  exit 1
fi

if [ -z "${MACHINE_TYPE}" ]; then
  echo "MACHINE_TYPE not set. No object to download."
  exit 1
fi


cd /data

echo "Setting AWS credentials"
aws configure set aws_access_key_id ${AWS_ACCESS_KEY_ID}
aws configure set aws_secret_access_key ${AWS_SECRET_ACCESS_KEY}

echo "Creating working dir"
mkdir -v /data/${SAMPLE}_${MACHINE_TYPE}

echo "Copying BlastDB"
time ( curl -sf https://cbb-research-dl-blastdb.s3.amazonaws.com/MANIFEST | parallel -j ${CPUs} -t curl -Osf {} )

echo "Copying sample fasta"
time aws s3 cp s3://${INBUCKET}/${SAMPLE}.fa /data/

echo "Running CWL workflow"
time cwltool --no-container --on-error continue --tmpdir-prefix /data/ --tmp-outdir-prefix /data/ --outdir /data/${SAMPLE}_${MACHINE_TYPE} https://raw.githubusercontent.com/ncbi/cwl-ngs-workflows-cbb/develop/workflows/Annotation/transcriptome_annotation.cwl --blast_db_dir /data --threads ${CPUs} --evalue 1e-5 --blast_nt_db nt --blast_nr_db nr --blast_cdd_db split-cdd --fasta /data/${SAMPLE}.fa

echo "Copying results to the S3"
time aws s3 cp --recursive /data/${SAMPLE}_${MACHINE_TYPE} s3://${OUTBUCKET}/${SAMPLE}_${MACHINE_TYPE}/

exit 0
