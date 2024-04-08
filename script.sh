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