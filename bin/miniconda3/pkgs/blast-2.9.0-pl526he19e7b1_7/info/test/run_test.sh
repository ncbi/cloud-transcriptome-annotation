#!/bin/bash
# Tests based on Debian project ncbi-blast package

set -e

TMPDIR=$(mktemp -d)
trap "rm -rf $TMPDIR" 0 INT QUIT ABRT PIPE TERM

cp test*.fa $TMPDIR
cd $TMPDIR

echo -n 'Creating Database... '
makeblastdb \
  -in testdatabase.fa -parse_seqids -dbtype nucl -out testdb | \
   grep -q "added 3 sequences"
echo PASS
echo -n 'Searching Database for Hits... '
blastn \
  -query test.fa -db testdb -task blastn -dust no \
  -outfmt "7 qseqid sseqid evalue bitscore" -max_target_seqs 6 | \
  grep -q " 3 hits found"
echo PASS
echo -n 'Search and Fetch An Entry From Database... '
blastdbcmd -db testdb -entry gnl1 -out test_query.fa
test "$(grep -c ">gnl1" < test_query.fa)" -eq 1
test "$(grep -c ">" < test_query.fa)" -eq 1
test "$(wc -l < test_query.fa)" -eq 10
echo PASS
echo
echo "ALL TESTS PASSED"


set -ex



blastn -help
blastp -help
makeblastdb -help
blastdb_aliastool -version > /dev/null
blastdbcheck -version > /dev/null
blastdbcmd -version > /dev/null
blastn -version > /dev/null
blastp -version > /dev/null
blastx -version > /dev/null
convert2blastmask -version > /dev/null
dustmasker -version > /dev/null
makeblastdb -version > /dev/null
makembindex -version > /dev/null
psiblast -version > /dev/null
rpsblast -version > /dev/null
rpstblastn -version > /dev/null
rpsbproc -version > /dev/null
segmasker -version > /dev/null
tblastn -version > /dev/null
tblastx -version > /dev/null
windowmasker -version > /dev/null
update_blastdb.pl --version > /dev/null
get_species_taxids.sh -h > /dev/null
exit 0
