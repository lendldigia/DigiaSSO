#export JAVA_OPTS="-Djava.util.prefs.systemRoot=${WSO2_SERVER_HOME}/preferences/.java -Djava.util.prefs.userRoot=${WSO2_SERVER_HOME}/preferences/.java/.userPrefs"
#export JAVA_OPTS=${JAVA_OPTS}" \
export JAVA_OPTS="
-Dposti.mysql.endpoint=wso2-poc.cf4yeunqjviy.eu-west-1.rds.amazonaws.com \
"

mkdir -p ${WSO2_SERVER_HOME}/preferences/.java
cd ${WSO2_SERVER_HOME}
nohup ${WSO2_SERVER_HOME}/bin/wso2server.sh