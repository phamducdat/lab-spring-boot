FROM openjdk:11-jdk-slim
RUN mkdir /app
COPY target/myapp.jar /app/myapp.jar
WORKDIR /app
EXPOSE 8080
ENTRYPOINT ["java","-jar","myapp.jar"]
