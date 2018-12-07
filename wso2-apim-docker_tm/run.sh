#!/bin/bash

docker run -d -p 9446:9446 -p 9614:9614 -p 9714:9714 -p 5675:5675 -it --entrypoint "/bin/sh" wso2am-tm:2.1.0 -c  /home/wso2carbon/wso2am-2.1.0/bin/wso2start.sh