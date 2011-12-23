#!/bin/bash
#
#    File: env_template.sh
#

# Description:
#url=http://curl.haxx.se/download/curl-7.23.1.tar.gz
url=$1

appname=${url##*/}
echo \# ${appname%-*}
APP=${appname%.["gz"|zip]*}     # strip gz if it is there
APP=${appname%.["tar"]*}   # strip tar if there
echo APP=${appname%.["tar"]*}   # strip tar if there
echo VERSION=${APP##*-}
echo EXT=
echo DIR=\${APP}
url_prefix="${url:0:${#url} - ${#appname}}"
echo URL=$url_prefix\${APP}.\${EXT}

# env_template.sh ends here
