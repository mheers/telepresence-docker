# Telepresence Docker

This is a Docker image for [Telepresence](https://www.telepresence.io/), a tool that lets you run a single service locally, while connecting to a remote Kubernetes cluster.

It bundles the Telepresence client, kubectl and kubens and offers a docker-compose file that mounts the kubeconfig, adds the needed capabilities and mounts the needed devices to be able to run Telepresence **fully** in a container.
