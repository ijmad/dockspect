#!/bin/bash
DIR=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )
ssh-keygen -f $DIR/key/generated -b 2048 -N ''