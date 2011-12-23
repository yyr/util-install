#!/bin/bash
#
# Description:

. $SCRIPTS_DIR/FUSE.env
. $SCRIPTS_DIR/SSHFS.env
cd $BASE/src/
cd ${DIR}
echo $(pwd)

export PKG_CONFIG_PATH=$FUSE_ROOT
SSHFS_CFLAGS=-I$FUSE_ROOT/include
SSHFS_LIBS=-L$FUSE_ROOT/lib

./configure --prefix=$SSHFS_ROOT --exec-prefix=$SSHFS_ROOT \
    | tee ${APP}.${COMP}.config
make clean 2>&1 | tee ${APP}.${COMP}.clean
make 2>&1 | tee ${APP}.${COMP}.make
make install 2>&1 | tee ${APP}.${COMP}.install

# SSHFS.sh ends here
