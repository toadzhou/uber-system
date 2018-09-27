# 发布脚本
```text
#!/bin/sh
cd /home/workspace
rm -rf uber-system
#杀掉进程
pid=`ps -ef | grep project-web-1.0-SNAPSHOT.jar | grep -v grep | awk '{print $2}'`
if [ -n "$pid" ]
then
   kill -9 $pid
fi

#下载资源
git clone https://github.com/livtrip/uber-system.git
cd /home/workspace/uber-system

#编译资源
mvn clean package -Dmaven.test.skip=true
cd /home/workspace/uber-system/uber-web/target

export MAVEN_OPTS="-Xms512m -Xmx2048m -XX:PermSize=256m -XX:MaxPermSize=512m"
nohup java -jar  uber-web-1.0-SNAPSHOT.jar

echo "release success...."

# 指定堆栈的初始化值,最大堆内存
java -server -Xms512m -Xmx768m  -jar springboot-1.0.jar
```
