FROM centos

RUN yum install -y java-11-openjdk-devel
VOLUME /tmp
ADD target/jenkins_test.jar app.jar

RUN sh -c 'touch /app.jar'
EXPOSE 5000
ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom","-jar","/app.jar"]