FROM maven:3.6.3-openjdk-11-slim as BUILDER
WORKDIR /nbbmm
COPY src /nbbmm/src
COPY pom.xml /nbbmm
RUN mvn -f /nbbmm/pom.xml clean package

#FROM openjdk:11
#ADD target/Nbbmm-0.0.1-SNAPSHOT.jar nbbmm.jar
ENTRYPOINT ["java", "-jar", "/nbbmm/target/Nbbmm-0.0.1-SNAPSHOT.jar"]