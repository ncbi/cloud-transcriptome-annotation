

set -ex



test -f $PREFIX/bin/git
test -f $PREFIX/bin/gitk
test -f $PREFIX/libexec/git-core/git-add--interactive
git --version
git clone https://github.com/conda-forge/git-feedstock
bash $PREFIX/share/bash-completion/completions/git
conda inspect linkages -p $PREFIX $PKG_NAME
test -f $PREFIX/man/man1/git.1
exit 0
