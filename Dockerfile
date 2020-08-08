FROM openjdk:16-jdk
VOLUME /tmp
ADD target/*.jar idea-server-0.0.1-SNAPSHOT.jar
RUN sh -c 'touch /idea-server-0.0.1-SNAPSHOT.jar'
ENV JAVA_OPTS="-Duser.timezone=Asia/Shanghai"
ENV APP_OPTS=""
ENTRYPOINT [ "sh", "-c", "java $JAVA_OPTS -Djava.security.egd=file:/dev/./urandom -jar /idea-server-0.0.1-SNAPSHOT.jar $APP_OPTS" ]