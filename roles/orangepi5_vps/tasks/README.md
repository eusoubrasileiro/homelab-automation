### Vps Deploy

```bash
sudo apt-get update
hostnamectl set-hostname manager1
```
At /etc/hosts replace `localhost` to `manager1`

Download and install docker

```bash
curl -fsSL https://get.docker.com | bash
```
Set up docker swarm and public network

```bash
docker swarm init
docker network create --driver=overlay --attachable network_public
```

Deploy portainer stack [official docs](https://docs.portainer.io/start/install-ce/server/swarm/linux)
Copy from portainer/docker-stack-deploy.yaml (using nautilus) to vps server 

```bash
docker stack deploy --prune --resolve-image always -c portainer.yaml portainer
```do

### Install cloudflared for DNS and Tunnel

From Cloudflare site. Zero Trust->Networks->Tunnels get the script curl etc For arm64-bit