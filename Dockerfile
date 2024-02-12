# Usa una imagen base de OpenJDK 11
FROM adoptopenjdk:11-jre-hotspot

# Establece el directorio de trabajo en /app
WORKDIR /app

# Copia el archivo JAR construido por Maven en el directorio de trabajo
COPY target/demo-0.0.1-SNAPSHOT.jar /app/app.jar

# Expone el puerto 8080, que es el puerto predeterminado para las aplicaciones Spring Boot
EXPOSE 8080

# Comando para ejecutar la aplicación cuando se inicia el contenedor
CMD ["java", "-jar", "app.jar"]
