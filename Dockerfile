FROM openjdk:11-jre-slim
RUN addgroup --system spring && adduser spring --ingroup spring
USER spring:spring
ARG JAR_FILE=target/*.jar
COPY ${JAR_FILE} app.jar
RUN java -version
ENTRYPOINT ["java","-jar","/app.jar"]