#!/usr/bin/env bash

# For Kubectl AMD64 / x86_64
[ $(uname -m) = x86_64 ] && curl -sLO "https://dl.k8s.io/release/$(curl -L -s https://dl.k8s.io/release/stable.txt)/bin/linux/amd64/kubectl"
# For Kubectl ARM64
[ $(uname -m) = aarch64 ] && curl -sLO "https://dl.k8s.io/release/$(curl -L -s https://dl.k8s.io/release/stable.txt)/bin/linux/arm64/kubectl"
chmod +x ./kubectl
sudo mv ./kubectl /usr/local/bin/kubectl

# For devpod AMD64 / x86_64
[ $(uname -m) = x86_64 ] && curl -sL https://github.com/loft-sh/devpod/releases/download/v0.5.4/devpod-linux-amd64 -o devpod
# For devpod ARM64
[ $(uname -m) = aarch64 ] && curl -sL https://github.com/loft-sh/devpod/releases/download/v0.5.4/devpod-linux-arm64 -o devpod
chmod +x ./devpod
sudo mv ./devpod /usr/local/bin/devpod
