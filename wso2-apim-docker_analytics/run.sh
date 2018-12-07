#!/usr/bin/env bash

docker run -d -p 9444:9444 -p 7612:7612 -it wso2am-analytics:2.1.0 -c /home/wso2carbon/wso2am-analytics-2.1.0/bin/wso2start.sh