FROM openjdk:8-jdk-alpine
EXPOSE 8080
ADD target/spring-boot-web-application-example-0.0.1-SNAPSHOT.war
ENTRYPOINT ["java","-jar","app.jar"]
