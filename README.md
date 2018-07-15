# 发布脚本
```text
#!/bin/sh
cd /home/workspace
rm -rf uber-system

pid=`lsof -i:8899 | awk '{print $2}'`
echo $pid
for i in $pid
do
        kill -9 $i
done

git clone https://github.com/livtrip/uber-system.git
cd /home/workspace/uber-system
mvn clean package -Dmaven.test.skip=true
cd /home/workspace/uber-system/uber-web/target
export MAVEN_OPTS="-Xms512m -Xmx2048m -XX:PermSize=256m -XX:MaxPermSize=512m"
nohup java -jar  uber-web-1.0-SNAPSHOT.jar

echo "release success...."


```
