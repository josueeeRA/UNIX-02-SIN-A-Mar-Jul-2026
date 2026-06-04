# !/usr/bin/env bash 
bash --version
set -x 
env
set +x
echo ${SHELL}
echo ${RANDOM}
echo ${UID}
echo ${OSTYPE}
# man ls 
ps -e -f
df -h
bash -r blackhatbash1.sh
# bash -n blackhatbash1.s
#!/bin/bash
set -x

--snip--

set +x