# FROM Instruction
docker build -t bimap98/from from

docker image ls

# RUN Instruction
docker build -t bimap98/run run

docker build -t bimap98/run run --progress=plain --no-cache

# CMD Instruction
docker build -t bimap98/command command

docker image inspect bimap98/command

docker container create --name command bimap98/command

docker container start command

docker container logs command

# LABEL Instruction
docker build -t bimap98/label label

docker image inspect bimap98/label

# ADD Instruction
docker build -t bimap98/add add

docker container create --name add bimap98/add

docker container start add

docker container logs add

# COPY Instruction
docker build -t bimap98/copy copy

docker container create --name copy bimap98/copy

docker container start copy

docker container logs copy

# .dockerignore
docker build -t bimap98/ignore ignore

docker container create --name ignore bimap98/ignore

docker container start ignore

docker container logs ignore

# EXPOSE Instruction
docker build -t bimap98/expose expose

docker image inspect bimap98/expose

docker container create --name expose -p 8080:8080 bimap98/expose

docker container start expose

docker container ls

curl localhost:8080

# ENV Instruction
docker build -t bimap98/env env

docker image ls

docker image inspect bimap98/env

docker container create --name env --env APP_PORT=9090 -p 9090:9090 bimap98/env

docker container start env

docker container ls

docker container logs env

curl localhost:9090

docker container stop env

# VOLUME Instruction

docker build -t bimap98/volume volume

docker image ls

docker image inspect bimap98/volume

docker container create --name volume -p 8080:8080 bimap98/volume

docker container start volume

docker container logs volume

docker container inspect volume

curl localhost:8080/bima

#a4ffc4299d432fd4c1f1e7f5fba068ea0d08b0241c99b232d6ceadc8f5e6cadd

docker volume ls

# WORKDIR Instruction

docker build -t bimap98/workdir workdir

docker image ls

docker container ls

docker container create --name workdir -p 8080:8080 bimap98/workdir

docker container start workdir

curl localhost:8080

docker container exec -i -t workdir sh # Windows

docker container exec -i -t workdir /bin/sh # Mac

docker container stop workdir

# USER Instruction

docker build -t bimap98/user user

docker image ls

docker container ls

docker container create --name user -p 8080:8080 bimap98/user

docker container start user

curl localhost:8080

docker container exec -i -t user sh

docker container stop user

# ARG Instruction

docker build -t bimap98/arg arg --build-arg app=pzn

docker image ls

docker image inspect bimap98/arg

docker container ls

docker container create --name arg -p 8080:8080 bimap98/arg

docker container start arg

curl localhost:8080

docker container logs arg

docker container exec -i -t arg sh

# HEALTHCHECK Instruction

docker build -t bimap98/health health

docker image ls

docker container ls

docker container create --name health -p 8080:8080 bimap98/health

docker container start health

docker container ls

docker container inspect health

# ENTRYPOINT Instruction

docker build -t bimap98/entrypoint entrypoint

docker image inspect bimap98/entrypoint

docker image ls

docker container create --name entrypoint -p 8080:8080 bimap98/entrypoint

docker container ls

docker container start entrypoint

curl localhost:8080

docker container stop entrypoint

# Multi Stage Instruction

docker build -t bimap98/multi multi

docker image ls

docker container create --name multi -p 8080:8080 bimap98/multi

docker container start multi

curl localhost:8080

docker container stop multi
