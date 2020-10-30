if [ -z ${CONDA_BUILD+x} ]; then
    source /home/conda/feedstock_root/build_artifacts/google-cloud-sdk_1584915950730/work/build_env_setup.sh
fi
#!/bin/bash

outdir=$PREFIX/share/$PKG_NAME-$PKG_VERSION-$PKG_BUILDNUM
mkdir -p $outdir
mkdir -p $PREFIX/bin

cp -r * $outdir
for FNAME in gcloud gsutil bq docker-credential-gcloud
do
    sed -i.bak "s|# <cloud-sdk-sh-preamble>|export CLOUDSDK_PYTHON=$PREFIX/bin/python|g" $outdir/bin/$FNAME
    ln -s $outdir/bin/$FNAME $PREFIX/bin
done

if [[ $target_platform =~ linux.* ]]; then
    rm -fr $outdir/platform/gsutil/third_party/crcmod_osx
fi

# google-cloud-sdk starts from $outdir/lib/googlecloudsdk/core/config.py and
# searches for any directory containing .install to mark it as the SDK_ROOT
# Empty directories are ignored by the packaging process in Conda, so add a
# placeholder to force inclusion of that folder
mkdir -p $outdir/.install && touch $_/.conda
