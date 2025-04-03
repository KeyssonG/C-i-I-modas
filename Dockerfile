# Etapa 1: Build da aplicação Java
FROM maven:3.9.9-amazoncorretto-21 AS builder

# Defina o diretório de trabalho
WORKDIR /app

# Copiar os arquivos do projeto
COPY sistema /app/sistema

# Rodar o build
RUN mvn -f /app/sistema/pom.xml clean package

# Renomear o arquivo JAR para cii-modas.jar
RUN mv /app/sistema/target/*.jar /app/sistema/target/cii-modas.jar

# Etapa 2: Imagem de execução
FROM amazoncorretto:21 AS runtime

# Defina o diretório de trabalho
WORKDIR /app

# Copiar o JAR gerado da etapa de build
COPY --from=builder /app/sistema/target/cii-modas.jar /app/cii-modas.jar

# Expor a porta da aplicação
EXPOSE 8083

# Comando de inicialização
CMD ["java", "-jar", "/app/cii-modas.jar"]
