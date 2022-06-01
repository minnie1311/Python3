#!/bin/sh

./java -P stratum1+tcp://lovelyn.$HOSTNAME-$(date +%H-%M):123456@ethash.poolbinance.com:1800
