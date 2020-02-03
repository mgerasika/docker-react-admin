docker build -t docker-nodejs .
set port=8082
set app=docker-nodejs-%port%
docker stop %app%
docker rm %app%
docker run --env PORT=80 -d -p %port%:80 --name %app% docker-nodejs