#!/bin/bash

configFile="$(pwd)/node_builder.json"
if [[ -f "$configFile" ]]; then
    echo 'a'
else
    echo 'b'
fi
