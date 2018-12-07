#export JAVA_OPTS="-Djava.util.prefs.systemRoot=${WSO2_SERVER_HOME}/preferences/.java -Djava.util.prefs.userRoot=${WSO2_SERVER_HOME}/preferences/.java/.userPrefs"
#export JAVA_OPTS=${JAVA_OPTS}" \
export JAVA_OPTS="
-Dposti.mysql.endpoint=wso2-poc.cf4yeunqjviy.eu-west-1.rds.amazonaws.com \
-Dposti.cluster.hostname=wso2-dev.vitkutin.com \
-Dposti.cluster.mgthostname=mgt-wso2-dev.vitkutin.com \
-Dposti.gatewayWorker.host=wso2-dev.vitkutin.com \
-Dposti.gatewayWorker.http.nio.port=80 \
-Dposti.gatewayWorker.https.nio.port=443 \
-Dposti.trafficManager.host=tm.wso2-test \
-Dposti.trafficManager.mgt.transport.https.port=9446 \
-Dposti.trafficManager.receiver.url.port=9614 \
-Dposti.trafficManager.auth.url.port=9714 \
-Dposti.trafficManager.jms.port=5675 \
-Dposti.gatewayManager.host=gm.wso2-test \
-Dposti.gatewayManager.mgt.transport.https.port=9445 \
-Dposti.gatewayManager.traffic.https.port=8245 \
-Dposti.keyManager.host=km.wso2-test \
-Dposti.keyManager.mgt.transport.https.port=9447 \
-Dposti.keyManager.client.type=WSClient \
-Dposti.keyManager.thriftServer.port=10401 \
-Dposti.apiPublisher.host=mgt-wso2-dev.vitkutin.com \
-Dposti.apiPublisher.mgt.transport.https.port=443 \
-Dposti.apiStore.host=portal.mgt-wso2-dev.vitkutin.com \
-Dposti.apiStore.mgt.transport.https.port=443 \
-Dposti.local.host=$( hostname ) \
-Dposti.enableThriftServer=false \
-Dposti.apiStoredisplayURL=false \
-Dposti.trafficManager.jms=false \
-Dposti.enableAnalytics=false \
-Dposti.enableThriftServer=false \
-Dposti.enable.advance.throttling=false \
-Dposti.enable.dataPublisher.throttling=false \
-Dposti.skipCache=false \
-Dposti.gateway.type=Synapse \
-Dposti.enable.blockCondition=false \
-Dposti.privateKeyAlias=$( hostname )"

mkdir -p ${WSO2_SERVER_HOME}/preferences/.java
cd ${WSO2_SERVER_HOME}
nohup ${WSO2_SERVER_HOME}/bin/wso2server.sh  -DportOffset=3 -Dprofile=traffic-manager -DworkerNode=true