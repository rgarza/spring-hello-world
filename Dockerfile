FROM openjdk:11-jre-slim
RUN addgroup --group spring && adduser spring --ingroup spring --disabled-password --gecos "First Last,RoomNumber,WorkPhone,HomePhone"
USER spring:spring
ARG JAR_FILE=target/*.jar
COPY ${JAR_FILE} app.jar
EXPOSE 8080
ENTRYPOINT ["java","-jar","/app.jar"]