FROM eclipse-temurin:21-jre-jammy
WORKDIR /app

# Copy the Quarkus runner JAR and lib directory
COPY target/quarkus-app/lib/ /app/lib/
COPY target/quarkus-app/*.jar /app/
COPY target/quarkus-app/app/ /app/app/
COPY target/quarkus-app/quarkus/ /app/quarkus/

CMD ["java", "-jar", "quarkus-run.jar"]
