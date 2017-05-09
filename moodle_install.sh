#!/bin/bash

# state data dir
DATA="/data"


usage() { echo "Usage: $0 -d <www.mydomain.com>" 1>&2; exit 1; }

while getopts ":d:" o; do
    case "${o}" in
        d)
            s=${OPTARG}
            ;;
        *)
            usage
            ;;
    esac
done
shift $((OPTIND-1))

if [ -z "${d}" ]]; then
    usage
fi

dst_dir=${DATA}/${d}
mkdir -p ${dst_dir}
pushd ${dst_dir} 
# git clone -b MOODLE_31_STABLE git://git.moodle.org/moodle.git 
