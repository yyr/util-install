#!/bin/bash
#
#    File: EMACS_TRUNK.sh
# Created: 2011-12-19 15:54
#
. $SCRIPTS_DIR/apps/AUTOCONF.env
. $SCRIPTS_DIR/apps/CURL.env
. $SCRIPTS_DIR/apps/EMACS_TRUNK.env

cd $BASE/${DIR}

# sudo apt-get build-dep git-core git-doc
#./configure --prefix=$EMACS_TRUNK_ROOT/emacs-${TYPE} 2>&1 | tee log.configure
make 2>&1 | tee log.make  # remove doc for less dependencies
make install

# CURL.sh ends here
