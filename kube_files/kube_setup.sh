#!/bin/bash

docker build -t flask_pgs-flask-app:latest ..

minikube image load flask_pgs-flask-app:latest

kubectl apply -f postgres_dply.yml

sleep 15

kubectl apply -f postgres_srvc.yml

kubectl apply -f flask_dply.yml

sleep 15

kubectl apply -f flask_srvc.yml
