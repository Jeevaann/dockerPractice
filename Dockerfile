FROM maven:3.3-jdk-8

WORKDIR app
COPY ./javapp/src ./src
COPY ./javapp/pom.xml .
#COPY ./javapp/target/javapp-1.0-SNAPSHOT.jar .
RUN mvn package
CMD ["java","-jar","/app/target/javapp-1.0-SNAPSHOT.jar"]

