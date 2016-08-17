# Introduction
Docker-compose run docker image haproxy:1.6

## Source
https://github.com/docker-library/docs/tree/master/haproxy

## Version
Current Version: 1.6.7

## Maintainer
Vincent_Lin@xpec.com

# Compose Setting
- Listen ports 443 to 443
- Listen ports 80 to 1936

```
haproxy:
  image: haproxy:1.6
  ports:
    - "443:443"
    - "80:1936"
```

# Quick Start
```bash
git clone https://github.com/VincentLinsanity/docker-haproxy.git
```

run docker-compose

```bash
cd haproxy/compose/
docker-compose up -d
```

# Load Balance Example
```
frontend ssl_switch
     mode http
     bind :443 ssl crt /usr/local/etc/haproxy/server.pem.example
     default_backend service_cluster
```
 
 ```
 backend service_cluster
     mode http
     balance roundrobin
     server srv1 172.17.0.1:3000 check
     server srv2 172.17.0.1:3001 check
```

