FROM openjdk:8-jdk-alpine

MAINTAINER "mohita.kataria@gmail.com"

VOLUME /tmp

EXPOSE 8888

ARG JAR_FILE=/target/springApp-0.0.1-SNAPSHOT.jar

COPY ${JAR_FILE} springApp.jar

RUN echo "Creation of your docker image is in progress"

ENTRYPOINT ["java", "-jar", "springApp.jar"]