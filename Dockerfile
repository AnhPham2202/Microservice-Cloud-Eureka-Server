FROM openjdk:11

FROM maven:3.6.3

WORKDIR /app

COPY . /app

EXPOSE 8671

RUN mvn clean install package

CMD ["mvn", "spring-boot:run"]
