FROM eclipse-temurin:17-jre
WORKDIR /app
COPY ruoyi-admin/target/ruoyi-admin.jar /app/app.jar
EXPOSE 8081
ENTRYPOINT ["java", "-Xms256m", "-Xmx512m", "-Duser.timezone=Asia/Shanghai", "-jar", "/app/app.jar"]