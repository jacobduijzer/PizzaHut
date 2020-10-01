#!/usr/bin/sh

minikube delete
minikube start
minikube addons enable ingress
