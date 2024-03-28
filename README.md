# kind-vcluster-devpod
Just testing kind, vcluster, devpods, containers.dev, in a workflow. Pulls a project with a devcontainer, runs tests from within a new devpod. Inception.

Usage:

From a machine with devpod installed, a provider configured:


```
devpod up https://github.com/aatchison/kind-vcluster-devpod --ide none

ssh kind-vcluster-devpod.devpod -C ./run.sh

devpod delete kind-vcluster-devpod
```


OR 

inside of a vscode devcontainer:

```./run.sh```

