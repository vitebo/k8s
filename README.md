# K8s
a kubctl image with some shortcuts

## Basic setup
- add your k8s settings in `$HOME/.kube/config`
- save this alias in your bashrc/zshrc
```sh
alias k8s='docker run \
  --rm \
  -it \
  --name kubectl \
  -v $HOME/.kube/config:/root/.kube/config \
  vitebo/k8s:v1.0.0 \
'
```
- run `k8s bash`

bash displays its current context in the `PS1` variable


## Alias
### kexec
use `kexec` to run a command on your pod.

#### Example:
```sh
$ kexec name_of_your_pod bash
```

### klogs
use `klogs` to view your pod logs.

#### Example:
```sh
$ klogs name_of_your_pod bash
```

## Image
the image can be found in the [docker hub](https://hub.docker.com/r/vitebo/k8s).
