FROM eclipse-temurin:21-alpine
RUN addgroup -S spring && adduser -S spring -G spring
USER spring:spring
ARG JAR_FILE=spring-server.jar
COPY ./spring-server.jar spring-server.jar
ENTRYPOINT ["java","-jar","-Dserver.port=9003","/spring-server.jar"]
