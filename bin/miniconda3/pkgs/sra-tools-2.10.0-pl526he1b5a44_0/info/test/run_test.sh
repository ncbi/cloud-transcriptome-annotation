

set -ex



fastq-dump --help > /dev/null
prefetch --help > /dev/null
sam-dump --help > /dev/null
sra-pileup --help > /dev/null
vdb-config --help > /dev/null
vdb-decrypt --help > /dev/null
fastq-dump -N 1 -X 1 SRR000001 && grep '@SRR000001.1' SRR000001.fastq
fasterq-dump --help > /dev/null
exit 0
