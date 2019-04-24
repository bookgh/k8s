#!/bin/bash

list="$1"
dir="$(echo $list | tr -d version)"

[ -d "$dir" ] || mkdir "$dir"
\cp $list $dir

for image in $(cat $list); do
    file="$(echo $image | awk -F ':' '{print $1}')"
    if [[ $image =~ flannel ]]; then
        echo "FROM quay.io/coreos/$image" > $dir/$file
        continue
    fi
    echo "FROM k8s.gcr.io/$image"  > $dir/$file
done
