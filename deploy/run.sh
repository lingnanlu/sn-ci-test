JARFILE="pipeline-test-0.0.1-SNAPSHOT.jar"

ps -ef | grep $JARFILE | grep -v grep | awk '{print $2}' | xargs kill -9

# 休息5秒，等待之前的实例关闭
sleep 5
nohup java -jar $JARFILE  > log.txt &