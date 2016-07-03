#!/bin/bash

if [ -z "$GIT_REPO" ]; then
    echo "error: Git repo address is not set, please set it"
    exit 1
fi

if [ -z "$GIT_BRANCH" ]; then
    echo "Git branch was not set, will be using 'master' branch"
    GIT_BRANCH="master"
fi

if [ -z "$VM_NAME" ]; then
    echo "VM name was not set, will be using default name"
    VM_NAME="my_vm"
fi

if [ -z "$REPORTS_PATH" ]; then
    echo "Path to reports was not set, reports will be saved in root directory"
    REPORTS_PATH="."
fi

#Launch VM
GIT_REPO=${GIT_REPO} GIT_BRANCH=${GIT_BRANCH} VM_NAME=${VM_NAME} REPORTS_PATH=${REPORTS_PATH} vagrant up | logger -p local0.error -t "Launch VM"

#Destroy VM
GIT_REPO=${GIT_REPO} GIT_BRANCH=${GIT_BRANCH} VM_NAME=${VM_NAME} REPORTS_PATH=${REPORTS_PATH} vagrant destroy --force | logger -p local0.error -t "Destroy VM"


