#!/bin/bash

type=$(echo $0 | sed 's/.*build-\(.*\).sh/\1/')
version=$(date +"%FT%H.%M.%S")

# wget https://c.jun6.net/ZFILE/zfile-release.war
# mkdir -p zfile && unzip zfile-release.war -d zfile && rm -rf zfile-release.war
# chmod +x zfile/bin/*.sh

docker build -t hub.dosec.cn/private/${type}:$version . && sed 's/\('$type':\).*[0-9]/\1'${version}'/' -i docker-compose.yaml
docker push hub.dosec.cn/private/${type}:$version
