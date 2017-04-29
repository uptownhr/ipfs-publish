#!/bin/bash

publish ()

{
    echo "$@"

    hash_log=$(ipfs add $@)

    echo $hash_log 
    
    #    hash=$(echo $hash_log | awk '{ print $2; }')
    hash=$(echo $hash_log | rev | cut -d' ' -f2 | rev)
    echo $hash

    ipfs name publish $hash
}


publish $@
