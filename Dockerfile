FROM eclipse-temurin:21-jdk
WORKDIR /app
COPY target/electricity-business.jar app.jar
ENTRYPOINT ["java","-jar","app.jar"]
