

set -ex



python -m pip check
jupyter kernelspec list
jupyter run -h
pytest --pyargs jupyter_client --cov jupyter_client
exit 0
