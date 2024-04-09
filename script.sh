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