#!/bin/bash

publish ()

{
    echo "$@"

    hash_log=$(ipfs add $@)
    hash=$(echo $hash_log | awk '{ print $2; }')

    ipfs name publish $hash
}


publish $@
