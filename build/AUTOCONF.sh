#!/bin/bash
#
# Description:

. $SCRIPTS_DIR/apps/M4.env
. $SCRIPTS_DIR/apps/AUTOCONF.env
cd $BASE/src/
cd ${DIR}
echo $(pwd)

./configure --prefix=$AUTOCONF_ROOT --with-m4=$M4_ROOT | tee ${APP}.${COMP}.config
make clean 2>&1 | tee ${APP}.${COMP}.clean
make 2>&1 | tee ${APP}.${COMP}.make
make check 2>&1 | tee ${APP}.${COMP}.check
make install 2>&1 | tee ${APP}.${COMP}.install


# AUTOCONF.sh ends here
