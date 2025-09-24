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

The cloudflared docker container is running on portainer.
So only need to configure the routes to `network_public` using docker services|containers names. 

From Cloudflare site. Zero Trust->Networks->Tunnels set the following 

1. Route: portainer.talvez.site
   Path: *
   Service: http://portainer:9000

2. Route: auto.talvez.site
   Path: *
   Service: http://n8n:5678

3. Route: evo.talvez.site
   Path: *
   Service: http://evolution_api:8080

