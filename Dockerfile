FROM eclipse-temurin:11-jre-alpine
RUN pwd
RUN sleep 3600
COPY target/demo-0.0.1-SNAPSHOT.jar app.jar
ENTRYPOINT ["java","-XX:TieredStopAtLevel=1","-Xss256k","-jar","app.jar"]
