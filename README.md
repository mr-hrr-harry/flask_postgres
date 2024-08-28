# docker file run

**pre-requisites**

docker

For docker refer: [Docker Notes](https://mr-horror-harry.notion.site/Harry-s-Docker-Docs-d252b1bba2ab42e084fcb7b2f970cf2b)

1. run a postgres docker container with required env variables set

2. `docker run -d --rm --name postgres_container -e POSTGRES_USER=<uname> -e POSTGRES_PASSWORD=<pass> -e POSTGRES_DB=dbname -p <port>:5432 postgres`

3. `docker build -t <image_name> .`

4. `docker run -d -e DB_URL=<postgresql://uname:pass@deviceip:port/dbname> -p 8080:8000 <image_name>`

# docker compose run

**pre-requisites**

docker compose (installed with docker)

For docker compose refer: [Docker compose Notes](https://mr-horror-harry.notion.site/Harry-s-Docker-compose-Docs-1d41f455fd0d442cb3c1c59fd3c06358)

1. run the docker compose file using the command

`docker compose up`

# kube as service

**pre-requisites**

minikube

kubectl

For kubenetes refer: [Kubernetes Notes](https://mr-horror-harry.notion.site/Harry-s-K8s-Docs-4147ad7e5f264ee181bd016a6662bde2)

1. move into the kube_files folder

2. run the kube_setup.sh files with required file permissions

`./kube_setup.sh`