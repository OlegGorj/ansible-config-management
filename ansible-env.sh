#!/bin/bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
export EC2_INI_PATH=$DIR/lib/ec2.ini
export ANSIBLE_HOSTS=$DIR/lib/ec2.py

