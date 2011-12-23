#!/bin/bash
#
# Description:

. $SCRIPTS_DIR/FUSE.env
. $SCRIPTS_DIR/SSHFS.env
cd $BASE/src/
cd ${DIR}
echo $(pwd)

export SSHFS_LIBS=-L$FUSE_ROOT/lib
export SSHFS_CFLAGS=" -D_FILE_OFFSET_BITS=64 -I/usr/include/glib-2.0 -I/usr/lib64/glib-2.0/include -lglib-2.0 -lgthread-2.0 -lfuse -lrt -ldl -I${FUSE_ROOT}/include/fuse "


./configure --prefix=$SSHFS_ROOT --exec-prefix=$SSHFS_ROOT \
    | tee ${APP}.${COMP}.config
make clean 2>&1 | tee ${APP}.${COMP}.clean
make 2>&1 | tee ${APP}.${COMP}.make
make install 2>&1 | tee ${APP}.${COMP}.install

# SSHFS.sh ends here
