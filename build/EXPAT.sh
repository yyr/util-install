#!/bin/bash
#
#    File: EXPAT.sh
# Created: 2011-12-19 16:16
#

. $SCRIPTS_DIR/apps/EXPAT.env

cd $BASE/src/${DIR}

# sudo apt-get build-dep git-core git-doc
./configure --prefix=$EXPAT_ROOT 2>&1 | tee log.configure

make clean 2>&1 | tee ${APP}.${COMP}.clean
make 2>&1 | tee ${APP}.${COMP}.make
make check 2>&1 | tee ${APP}.${COMP}.check
make install 2>&1 | tee ${APP}.${COMP}.install

# CURL.sh ends here
