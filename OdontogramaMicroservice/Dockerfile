FROM openjdk:17
SHELL ["/bin/bash", "-c"]
WORKDIR /usr/src/app
RUN microdnf install git -y
RUN git clone --branch master https://github.com/AndrewGlez/odontograma-service.git
WORKDIR ./odontograma-service/
RUN ls -la
RUN chmod +x ./mvnw
CMD ["./mvnw", "spring-boot:run"]





