#!/bin/bash
#
#    File: CURL.sh
# Created: Tuesday, December  6 2011
#
. $SCRIPTS_DIR/SOURCEME
. $SCRIPTS_DIR/CURL.env

cd $BASE/src/${DIR}

# sudo apt-get build-dep git-core git-doc
./configure --prefix=$CURL_ROOT 2>&1 | tee log.configure

make 2>&1 | tee log.make  # remove doc for less dependencies
# make doc
make install

# CURL.sh ends here
