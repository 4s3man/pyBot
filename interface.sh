#!/usr/bin/env bash
#run one of scenarios

die () {
echo "$0:" "$@" >&2
exit 1
}

[ -f "$1" ] || die "arg must be a valid scenario file path"

docker container exec -uvirtua -w/home/ pybot_ubuntu_1 python3 $(basename "$1")