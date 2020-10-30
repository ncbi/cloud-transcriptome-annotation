""" run terminado tests with pytest, including platform- and python-based skips

    this is needed because `--pyargs` is not compatible with `-k` for
    function/method-based names
"""
import os
import sys
import pkgutil
import subprocess

platform = sys.platform
py_major = sys.version_info[:2]

loader = pkgutil.get_loader("terminado.tests")
test_path = os.path.dirname(loader.path)
pytest = [sys.executable, "-m", "pytest"]
cov_args = ["--cov", "terminado"]
pytest_args = ["-o", "junit_family=xunit2", "-vv", *cov_args, test_path]

skips = []

# flaky tests
if platform != "linux":
    skips += ["max_terminals", "single_process", "namespace", "basic_command"]

if platform == "darwin":
    skips += ["unique_processes"]

if not skips:
    print("all tests will be run", flush=True)

elif len(skips) == 1:
    pytest_args += ["-k", "not {}".format(*skips)]
else:
    pytest_args += ["-k", "not ({})".format(" or ".join(skips))]

print("Final pytest args for", platform, py_major)
print(" ".join([*pytest, *pytest_args]), flush=True)

# actually run the tests
sys.exit(subprocess.call([*pytest, *pytest_args]))
