#    File: utils.sh
#  Author: Yagnesh Raghava Yakkala <yagnesh@NOSPAM.live.com>
# Created: Tuesday, December  6 2011
#
# Description:

function cd_to_app_dir ()
{
    case $TYPE in
        git )
            cd $REPO_DIR
            ;;
    esac
}

# utils.sh ends here
