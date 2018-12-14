FROM openjdk:8
ADD target/docker-spring-boot-swagger.jar docker-spring-boot-swagger.jar
EXPOSE 8087
ENTRYPOINT ["java","-jar","docker-spring-boot-swagger.jar"]
