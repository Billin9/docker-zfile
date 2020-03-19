#!/bin/bash

case "$1" in
    -a)
        docker-compose up -d
        ;;
    -d)
        docker-compose down
        ;;
    *)
        echo "./`basename $0` <-a|-d|-h|--help>"
        ;;
esac
