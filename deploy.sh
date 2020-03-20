#!/bin/bash

case "$1" in
    -a)
        docker-compose up -d
        ;;
    -r)
        docker restart zfile
        ;;
    -d)
        docker-compose down
        ;;
    *)
        echo "./`basename $0` <-a|-d|-h|--help>"
        ;;
esac
