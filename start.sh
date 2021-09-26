#!/bin/bash

myFile="$(pwd)/package-lock.json"
if [[ -f "${myFile}" ]]
then
    npm ci
    npm run build
    echo "打包完成咯～"
else
    echo "请正确挂载项目目录QAQ"
fi

