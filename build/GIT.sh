#!/bin/bash
#
# Created: Saturday, May  7 2011
#
. $SCRIPTS_DIR/SOURCEME
. $SCRIPTS_DIR/apps/CURL.env
. $SCRIPTS_DIR/apps/EXPAT.env
. $SCRIPTS_DIR/apps/GIT.env

cd_to_app_dir
echo ${PWD}

autoconf
make clean
# sudo apt-get build-dep git-core git-doc
./configure --prefix=$GIT_ROOT \
    --with-curl=$CURL_ROOT --with-expat=$EXPAT_ROOT 2>&1 | tee log.configure

make all  2>&1 | tee log.make  # remove doc for less dependencies
make install

if [ `which asciidoc &> /dev/null`  ]; then
    make doc
    make install-doc install-info
fi

# GIT.sh ends here
