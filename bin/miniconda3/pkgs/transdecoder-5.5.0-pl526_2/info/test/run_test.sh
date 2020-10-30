

set -ex



TransDecoder.Predict --version | grep -q "TransDecoder.Predict 5.5.0"
TransDecoder.LongOrfs --version | grep -q "TransDecoder.LongOrfs 5.5.0"
start_codon_refinement.pl 2>&1 | grep -q optional:
exit 0
