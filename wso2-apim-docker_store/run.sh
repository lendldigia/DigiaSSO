#!/bin/bash

docker run -d -p 9444:9444 -p 8281:8281 -p 8244:8244 -it --entrypoint "/bin/sh" wso2am-store:2.1.0 -c /home/wso2carbon/wso2am-2.1.0/bin/wso2start.sh