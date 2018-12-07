#!/bin/bash

docker run -d -p 9443:9443 -p 8280:8280 -p 8243:8243 -it --entrypoint "/bin/sh" wso2am-pub:2.1.0 -c /home/wso2carbon/wso2am-2.1.0/bin/wso2start.sh