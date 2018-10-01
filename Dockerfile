# o que eu quero instalar : versao
FROM node:latest
# autor 
MAINTAINER Luiz Otavio 
# o que quero colocar no volume  e qual nome da pasta que vou criar no container
COPY . /var/www
#o comando vai ser executado em qual pasta
WORKDIR /var/www
#comando que quero executar assim que eu subir o container
RUN npm install
ENTRYPOINT ["npm", "start"]
#qual porta quero usar
EXPOSE 3000
