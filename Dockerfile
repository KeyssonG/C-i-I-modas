# Etapa 1: Build da aplicação Java
FROM maven:3.9.9-amazoncorretto-21 AS builder

# Defina o diretório de trabalho
WORKDIR /app

# Copiar os arquivos do projeto
COPY sistema /app/sistema

# Definir o diretório correto para o Maven
WORKDIR /app/sistema

# Rodar o comando Maven para build da aplicação
RUN mvn clean package

# Renomear o arquivo JAR para cii-modas.jar
RUN mv /app/sistema/target/sistema-0.0.1-SNAPSHOT.jar /app/cii-modas.jar

# Etapa 2: Criar imagem final apenas com o JAR
FROM alpine:latest

# Definir o diretório de trabalho
WORKDIR /app

# Copiar o JAR gerado da etapa de build
COPY --from=builder /app/cii-modas.jar /app/cii-modas.jar
