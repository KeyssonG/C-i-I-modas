# Etapa 1: Build da aplicação Java
FROM maven:3.9.9-amazoncorretto-21 AS builder

# Defina o diretório de trabalho
WORKDIR /app

# Baixar dependências do Maven antes de copiar o código-fonte completo
WORKDIR /app

# Copiar o restante dos arquivos do projeto
COPY sistema /app/sistema

# Rodar o comando Maven para build da aplicação
RUN mvn clean package

# Renomear o arquivo JAR para cii-modas.jar
RUN mv /app/sistema/target/sistema-0.0.1-SNAPSHOT.jar /app/sistema/target/cii-modas.jar

# Etapa 2: Imagem de execução
FROM openjdk:21-jdk-slim

# Defina o diretório de trabalho
WORKDIR /app

# Copiar o JAR gerado da etapa de build
COPY --from=builder /app/sistema/target/cii-modas.jar /app/sistema/cii-modas.jar

# Expor a porta que a API vai rodar
EXPOSE 8083

# Rodar a aplicação
CMD ["java", "-jar", "/app/cii-modas.jar"]
