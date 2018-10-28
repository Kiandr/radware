#Kian D.Rad - Dockerizing a web app radware technology interview 

# Perform the following from your home directory, or another clean directory.

# Clone the GitHub repo:  
git https://github.com/Kiandr/HelloRadware.git


cd HelloRadware

vim Dockerfile

#Contents of Dockerfile
FROM alpine
LABEL maintainer="info@kian.co"
RUN apk add --update nodejs nodejs-npm
COPY . /src
WORKDIR /src
RUN  npm install
EXPOSE 8080
ENTRYPOINT ["node", "./app.js"]

# Save the Dockerfile

docker image build -t radware .

docker image ls

docker container run -d --name radWareHelloWorld -p 8080:8080 radware
# show the name of the app 
docker ps -a