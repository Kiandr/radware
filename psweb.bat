#M5-03 - Dockerizing a web app

# Perform the following from your home directory, or another clean directory.

# Clone the GitHub repo:  
git clone https://github.com/nigelpoulton/psweb.git


cd psweb

vim Dockerfile

#Contents of Dockerfile
FROM alpine
LABEL maintainer="use-your-own-email"
RUN apk add --update nodejs nodejs-npm
COPY . /src
WORKDIR /src
RUN  npm install
EXPOSE 8080
ENTRYPOINT ["node", "./app.js"]

# Save the Dockerfile

docker image build -t psweb .

docker image ls

docker container run -d --name web1 -p 8080:8080 psweb