FROM eclipse-temurin:21-jdk

WORKDIR /app

COPY /build/libs/service.jar build/

WORKDIR /app/build
EXPOSE 8080
ENTRYPOINT java -jar service.jar