FROM openjdk:11
WORKDIR /app
COPY target/OrderService-0.0.1-SNAPSHOT.jar OrderService.jar
ENTRYPOINT ["java", "-jar", "OrderService.jar"]
