FROM openjdk
WORKDIR app
COPY ./javapp/src ./src
COPY ./javapp/target/javapp-1.0-SNAPSHOT.jar .
CMD ["java","-jar","javapp-1.0-SNAPSHOT.jar"]

