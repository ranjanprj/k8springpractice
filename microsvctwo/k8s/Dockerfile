FROM openjdk:17
WORKDIR /opt
ENV PORT 8888
EXPOSE 8888
COPY microsvctwo-1.0-SNAPSHOT.jar /opt/app.jar
ENTRYPOINT exec java $JAVA_OPTS -jar app.jar
CMD ["java", "-jar", "app.jar"]