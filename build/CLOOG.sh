#!/bin/bash
#
# Description:

. $SCRIPTS_DIR/apps/CLOOG.env
cd $BASE/src/
cd ${DIR}
echo $(pwd)

./configure --prefix=$SZIP_ROOT | tee ${APP}.${COMP}.config
make clean 2>&1 | tee ${APP}.${COMP}.clean
make 2>&1 | tee ${APP}.${COMP}.make
make check 2>&1 | tee ${APP}.${COMP}.check
make install 2>&1 | tee ${APP}.${COMP}.install


# CLOOG.sh ends here
