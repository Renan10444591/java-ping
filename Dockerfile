FROM maven:3.9.8-eclipse-temurin-21 as build
WORKDIR /opt/app
COPY . .
RUN mvn clean package

FROM maven:3.9.8-eclipse-temurin-21
RUN mkdir /opt/app
COPY --from=build /opt/app/target/app.jar /opt/app/app.jar
WORKDIR /opt/app
CMD ["java", "-jar", "target/seu-jar.jar"]