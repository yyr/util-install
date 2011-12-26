#!/bin/bash
#
# Description:

. $SCRIPTS_DIR/SCHEME.env
cd $BASE/src/
cd ${DIR}/src
echo $(pwd)

etc/make-liarc.sh    --prefix=$SCHEME_ROOT --exec-prefix=$SCHEME_ROOT \
    | tee ${APP}.${COMP}.make

make install 2>&1 | tee ${APP}.${COMP}.install

# SCHEME.sh ends here
