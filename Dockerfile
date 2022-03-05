FROM --platform=linux/amd64 openjdk:8u282-jre

COPY spring-petclinic/target/spring-petclinic-2.2.0.BUILD-SNAPSHOT.jar /opt/petclinic.jar

ENTRYPOINT [ "java", "-jar", "/opt/petclinic.jar", "--spring.profiles.active=mysql" ]

EXPOSE 8080