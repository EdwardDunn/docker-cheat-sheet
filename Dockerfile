# Build image with: ./mvnw install dockerfile:build
# Push to Docker Hub: ./mvnw dockerfile:push
# Run image with: docker run -p 8081:8081 -t edwarddunn/java-code-test-runner:latest
FROM openjdk:8
RUN apt-get update && \
    apt-get upgrade -y && \
    apt-get install -y  software-properties-common && \
	apt-get install junit4 -y && \
    apt-get clean
VOLUME /tmp
ARG DEPENDENCY=target/dependency
COPY ${DEPENDENCY}/BOOT-INF/lib /app/lib
COPY ${DEPENDENCY}/META-INF /app/META-INF
COPY ${DEPENDENCY}/BOOT-INF/classes /app
ENTRYPOINT ["java","-cp","app:app/lib/*","com.javarunner.javacodetestrunner.JavaCodeTestRunnerApplication"]
