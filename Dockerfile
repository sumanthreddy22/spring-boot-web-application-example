FROM openjdk:8-jdk-alpine
EXPOSE 8585
ADD target/spring-boot-web-application-example-0.0.1-SNAPSHOT.war app.war
ENTRYPOINT ["java","-jar","app.war"]
