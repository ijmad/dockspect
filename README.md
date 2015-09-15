# dockspect
A canned SSH server that can be deployed in to docker as a container. Useful for various things...

## Steps

1. Generate a key - `./gen-key.sh`
2. Build the docker image - `docker build -t dockspect .`
3. Use it, forwarding an SSH port - `docker run -p 2222:22 dockspect`
4. SSH in to it `ssh -i key/generated $(docker-machine env ip):2222`
5. Do things
