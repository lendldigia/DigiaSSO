#!/bin/bash

docker run  -d -p 9447:9447 -it --entrypoint "/bin/sh" wso2am-is:5.3.0 -c /home/wso2carbon/wso2is-km-5.3.0/bin/wso2start.sh