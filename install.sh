#!/bin/bash

function usage() {
    echo $0 "[ install remove backup restore ] [ cloud base ]"
}

function install_base() {
    echo "base" $1
    if [ ! -d ~/.config ]; then
        mkdir -p ~/.config
    else
        cp -R ./config/* ~/.config
    fi

    if [ -f ~/.bash_profile ]; then 
        cat bash_profile >> .bash_profile
    fi
}
function remove_base() {
    echo "remove_base" $1
    if [ -d ~/.config/xenv ]; then
        rm -rf ~/.config/xenv
    fi
}
function install_cloud() {
    echo "cloud" $1 $2
    if [ ! -d ~/.aws ]; then
        cp -R cloud/aws ~/.aws/
    fi
    if [ ! -d ~/.azure ]; then
        cp -R cloud/azure ~/.azure/
    fi
}

function remove_cloud() {
    echo "remove_cloud" $1 
    if [ -d ~/.aws ]; then
        rm -rf ~/.aws
    fi
    if [ -d ~/.azure ]; then
        rm -rf ~/.azure
    fi
    if [ -d ~/.config/gcloud ]; then
        rm -rf ~/.config/gcloud
    fi
}

function install() {
    echo "install" $1 $2

    case $1 in
        "cloud")
            shift
            install_cloud $2
            exit 0
            ;;
        "base")
            shift
            install_base $2
            exit 0
            ;;
        -h | --help)
            echo "install [ cloud | base ]"
            exit 0
        *)
            echo "Unknown: " $1
            exit 1
    esac
}

function remove() {
    echo "remove" $1 $2

    case $1 in
        "base")
            shift
            remove_base $2
            exit 0
            ;;
        "cloud")
            shift 
            remove_cloud $2
            exit 0
            ;;
        -h | --help)
            echo "remove [ cloud | base ]"
            exit 0
        *)
            echo "Unknown: " $1
            exit 1
    esac

}

function backup() {
    echo "backup" $1 $2
    if [ ! -d ~/.xbackup ]; then
        mkdir -p ~/.xbackup
    fi
    cp -R ~/.config ~/.xbackup/
    cp -R ~/.aws ~/.xbackup/
    cp -R ~/.azure ~/.azure/

}

function restore() {
    echo "restore" $1 $2
    if [ ! -d ~/.xbackup ]; then
        echo "Please create a backup first "
    fi
    cp -R ~/.xbackup/.config ~/.config
    cp -R ~/.xbackup/.aws ~/.aws/
    cp -R ~/.xbackup/.azure ~/.azure/

}

UTIL=$(basename $0)

if [ $# -eq 0 ]; then
	usage
	exit 0
fi

case $1 in
    "install")
        shift
        install "$@"
        exit 0
        ;;
    "remove")
        shift
        remove "$@"
        exit 0
        ;;
    "backup")
		shift
		backup "$@"
		exit 0
		;;
    "restore")
		shift
		restore "$@"
		exit 0
		;;
    -h | --help)
        usage
esac
