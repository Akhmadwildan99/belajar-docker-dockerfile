# FROM Instruction

docker build -t akhmadwildan/from from

docker image ls

# RUN Instruction
docker build -t akhmadwildan/run run

docker build -t akhmadwildan/run run --progress=plain --no-cache

# CMD Instruction
docker build -t akhmadwildan/command command

docker image inspect akhmadwildan/command

docker container create --name command akhmadwildan/command

docker container start command

docker container logs command


# LABEL Instruction
docker build -t akhmadwildan/label label

docker image inspect akhmadwildan/label

# ADD Instruction
docker build -t akhmadwildan/add add

docker container create --name add akhmadwildan/add

docker container start add

docker container logs add

# COPY Instruction
docker build -t akhmadwildan/copy copy

docker container create --name copy akhmadwildan/copy

docker container start copy

docker container logs copy

# .dockerignore
docker build -t akhmadwildan/ignore ignore

docker container create --name ignore akhmadwildan/ignore

docker container start ignore

docker container logs ignore

# EXPOSE Instruction
docker build -t akhmadwildan/expose expose

docker image inspect akhmadwildan/expose

docker container create --name expose -p 8080:8080 akhmadwildan/expose

docker container start expose

docker container ls

docker container logs expose

# ENV Instruction
docker build -t akhmadwildan/env env

docker image inspect akhmadwildan/env

docker container create --name env --env APP_PORT=9090 -p 9090:9090 akhmadwildan/env

docker container start env

docker container ls

docker container logs env


# VOLUME Instruction
docker build -t akhmadwildan/volume volume

docker image inspect akhmadwildan/volume

docker container create --name volume  -p 8080:8080 akhmadwildan/volume

docker container start volume

docker container ls

docker container logs volume

# 9c4f0b2cfd74142bc780e1a9a7f1a22aaef160b74131b77d104f482290248ea7

# WORKDIR Instruction
docker build -t akhmadwildan/workdir workdir

docker image inspect akhmadwildan/workdir

docker container create --name workdir  -p 8080:8080 akhmadwildan/workdir

docker container start workdir

docker exec -i -t workdir /bin/sh

docker container ls

docker container logs workdir

# USER Instruction
docker build -t akhmadwildan/user user

docker container create --name user  -p 8080:8080 akhmadwildan/user

docker container start user

docker exec -i -t user /bin/sh

# ARG Instruction
docker build -t akhmadwildan/arg arg --build-arg app=wildan

docker container create --name arg  -p 8080:8080 akhmadwildan/arg

docker container start arg

docker exec -i -t arg /bin/sh

# HEALTHCHECK Instruction
docker build -t akhmadwildan/health health

docker container create --name health  -p 8080:8080 akhmadwildan/health

docker container start health

docker exec -i -t health /bin/sh

docker container inspect health

# ENTRYPOINT Instruction
docker build -t akhmadwildan/entrypoint entrypoint

docker container create --name entrypoint  -p 8080:8080 akhmadwildan/entrypoint

docker container start entrypoint

docker exec -i -t entrypoint /bin/sh

docker container inspect entrypoint

docker image inspect entrypoint

# MULTI Instruction
docker build -t akhmadwildan/multi multi

docker image ls

docker container create --name multi  -p 8080:8080 akhmadwildan/multi

docker container start multi

docker exec -i -t multi /bin/sh

docker container inspect multi

docker image inspect multi