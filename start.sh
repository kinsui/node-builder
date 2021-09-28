#!/bin/bash

npmLockFile="$(pwd)/package-lock.json"

if [[ -f "${npmLockFile}" ]]; then
    npm ci
    npm run build
    echo "打包完成咯～"
else
    echo "请正确挂载项目目录QAQ,确保项目中package-lock.json是存在的"
fi
