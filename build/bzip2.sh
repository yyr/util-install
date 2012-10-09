#!/bin/bash
#
# Description:

. $SCRIPTS_DIR/apps/bzip2.env
cd $BASE/src/
cd ${DIR}
echo $(pwd)


make clean 2>&1 | tee ${APP}.${COMP}.clean
make 2>&1 | tee ${APP}.${COMP}.make
make PREFIX=$BZIP2_ROOT install 2>&1 | tee ${APP}.${COMP}.install

# bzip2.sh ends here
