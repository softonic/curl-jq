#/bin/bash

if [ $# -lt 1 ]
  then
    echo "$0 <image version>"
    echo "Example: $0 3.18.2-1"
    exit 1
fi

version=$1

docker build   -f Dockerfile .  -t softonic/curl-jq:$version --platform linux/amd64
docker push softonic/curl-jq:$version
