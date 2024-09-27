FROM maven:3.9.9-eclipse-temurin-17-alpine AS build

WORKDIR /app
COPY pom.xml .
COPY src/ src/
RUN mvn clean package

FROM eclipse-temurin:17.0.12_7-jre-alpine

COPY --from=build /app/target/*.jar /opt/app/app.jar
CMD ["java", "-jar", "/opt/app/app.jar"]
