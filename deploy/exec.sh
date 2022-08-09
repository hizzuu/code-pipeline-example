#!/bin/bash

# sh /home/appuser/code-pipeline-example/exec.sh test 10 true
set -eu

NAME=$1
NUM=$2
FLG=$3

LOGFILE=app.log

cd /home/appuser/code-pipeline-example/

if [ -e LOGFILE ]; then
  rm ${LOGFILE}
fi

# バイナリ実行
./code-pipeline-example -name="${NAME}" -num="${NUM}" -flg="${FLG}" > ${LOGFILE} 2>&1
