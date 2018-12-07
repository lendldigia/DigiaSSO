#!/bin/bash

docker run  -d  -p 9445:9445 -p 8282:8282 -p 8245:8245 -p 4502:4502  -it --entrypoint "/bin/sh" wso2am-gw-mgr:2.1.0 -c /home/wso2carbon/wso2am-2.1.0/bin/wso2start.sh