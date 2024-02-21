FROM openjdk:11-jre-slim
ARG JAR_FILE="/home/jenkins/agent/workspace/Simple Java Maven App/target/my-app-1.0-SNAPSHOT.jar"
COPY ${JAR_FILE} /app.jar
ENTRYPOINT [ "java", "/app.jar" ]