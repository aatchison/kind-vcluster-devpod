#!/usr/bin/env bash

$PATH=PATH:/home/vscode/.asdf/shims/

kind create cluster

kind get clusters

kubectl get nodes

vcluster create my-cluster

vcluster list

devpod provider add kubernetes

devpod up https://github.com/cnoe-io/idpbuilder --ide none --provider kubernetes

ssh idpbuilder.devpod -C "make test"

devpod delete idpbuidler