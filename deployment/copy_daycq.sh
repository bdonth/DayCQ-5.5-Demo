#!/bin/sh
# This script should deploy or build and deploy a given package

dat=$(date +"%m-%d-%y-%H-%M")

echo $dat

from=$1
to=$2

cp -r $from/daycq-ui-1.0.0-SNAPSHOT.jar $to/daycq-ui-1.0.0-SNAPSHOT.${BUILD_NUMBER}.jar
