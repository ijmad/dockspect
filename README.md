# dockspect
A canned SSH server that can be deployed in to docker as a container. Useful for various things, like port forwarding or exploring Docker's DNS.

## Steps

1. Generate a key - `./gen-key.sh`
2. Build the docker image - `docker build -t dockspect .`
3. Use it, forwarding an SSH port - `docker run -p 2222:22 dockspect`
4. SSH in to it `ssh -i key/generated $(docker-machine ip default) -P 2222`
5. Do things

For convenience, the docker environment including environment variables set with `-e` get recorded to `/etc/environment` when the container starts. These are not normally visible in SSH sessions.
