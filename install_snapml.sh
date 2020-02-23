#!/bin/bash
#forked from https://github.com/nvgsg/rapids/blob/master/rapids-colab.sh
set -eu
if [ ! -f Miniconda3-latest-Linux-x86_64.sh ]; then
    echo "Removing conflicting packages, will replace with RAPIDS compatible versions"

    # install miniconda
    echo "Installing conda"
    wget https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh
    chmod +x Miniconda3-latest-Linux-x86_64.sh
    bash Miniconda3-latest-Linux-x86_64.sh -b -f -p /usr/local

    echo "Installing SnapML packages"
    echo "Please standby, this will take a few minutes..."
    # install SnapML
    conda config --prepend channels \
https://public.dhe.ibm.com/ibmdl/export/pub/software/server/ibm-ai/conda/
    conda config --set channel_priority strict
    conda install -y --prefix /usr/local \
      python=3.6 cudatoolkit=10.2 \
      pai4sk seaborn matlib scikit-learn
    echo "Copying shared object files to /usr/lib"
    # copy .so files to /usr/lib, where Colab's Python looks for libs
    cp /usr/local/lib/lib*.so /usr/lib/
fi

echo ""
echo "*********************************************"
echo "Your Google Colab instance is SnapML ready!"
echo "*********************************************"

~                                                                                                                                                                                                           
~                                                                     
