# K8s

## Image

the image can be found in the [docker hub](https://hub.docker.com/r/vitebo/k8s).

## Basic setup

```sh
alias k8s='docker run \
  --rm \
  -it \
  --name kubectl \
  -v $HOME/.kube/config:/root/.kube/config \
  vitebo/k8s:v1.0.0 \
'
```
