#    File: utils.sh
#  Author: Yagnesh Raghava Yakkala <yagnesh@NOSPAM.live.com>
# Created: Tuesday, December  6 2011
#
# Description:

function chk-env()
{
    echo
}

function cd_to_app_dir ()
{
    case $TYPE in
        git )
            cd $REPO_DIR
            ;;
    esac
}

function install_debs ()
{
    for deb in $DEBS ; do
        sudo apt-get install $deb
    done
}

# utils.sh ends here
