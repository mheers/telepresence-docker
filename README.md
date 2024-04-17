# Telepresence Docker

This is a Docker image for [Telepresence](https://www.telepresence.io/), a tool that lets you run a single service locally, while connecting to a remote Kubernetes cluster.

It bundles the Telepresence client, kubectl and kubens and offers a docker-compose (and dev container) file that mounts the kubeconfig, adds the needed capabilities and mounts the needed devices to be able to run Telepresence **fully** in a container.

## Usage

### docker compose

Run `docker compose up` and then `docker compose exec telepresence bash`. Inside this container you can run `telepresence connect` and have your usual workflow.

### dev container

If you are using VSCode, you can open this repository in a dev container and have the same environment as the docker-compose setup.

In the dev container, you can run `telepresence connect` and have your usual workflow.
