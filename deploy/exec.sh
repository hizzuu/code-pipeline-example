#!/bin/bash

set -eu

NAME=$1
NUM=$2
FLG=$3

LOGFILE=app.log

cd /home/ec2-user/code-pipeline-example/

if [ -e LOGFILE ]; then
  rm ${LOGFILE}
fi

# バイナリ実行
./code-pipeline-example -name="${NAME}" -num="${NUM}" -flg="${FLG}" > ${LOGFILE} 2>&1