#!/usr/bin/env bash

kind create cluster

kind get clusters

kubectl get nodes

vcluster create my-cluster

vcluster list

devpod up https://github.com/cnoe-io/idpbuilder --ide none --provider kubernetes

ssh idpbuilder.devpod -C "make test"

devpod delete idpbuidler