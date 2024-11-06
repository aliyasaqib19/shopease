x<<<<<<< HEAD
FROM python:3.8-slim
WORKDIR /app
COPY . .
RUN pip install -r requirements.txt
CMD ["python", "app.py"]
=======
FROM openjdk:11
WORKDIR /app
COPY target/OrderService-0.0.1-SNAPSHOT.jar OrderService.jar
ENTRYPOINT ["java", "-jar", "OrderService.jar"]
>>>>>>> order_mang
