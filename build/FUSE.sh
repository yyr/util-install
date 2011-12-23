#!/bin/bash
#
# Description:

. $SCRIPTS_DIR/FUSE.env
cd $BASE/src/
cd ${DIR}
echo $(pwd)

sbindir=$FUSE_ROOT/sbin
UDEV_RULES_PATH=$FUSE_ROOT/fuse/udev
INIT_D_PATH=$FUSE_ROOT/fuse/init

./configure --prefix=$FUSE_ROOT --exec-prefix=$FUSE_ROOT | tee ${APP}.${COMP}.config
make clean 2>&1 | tee ${APP}.${COMP}.clean
make 2>&1 | tee ${APP}.${COMP}.make
make install 2>&1 | tee ${APP}.${COMP}.install

# FUSE.sh ends here
