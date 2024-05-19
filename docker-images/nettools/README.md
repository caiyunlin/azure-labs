# nettools

A simple, small, alpine-based Docker image with some handy networking tools installed, exposed web terminal for easy use. 

## References
- https://github.com/aeciopires/nettools
- https://github.com/pmietlicki/docker-nettools
- https://hub.docker.com/r/pmietlicki/nettools
- https://hub.docker.com/r/travelping/nettools
- https://github.com/raonigabriel/web-terminal

## Tools
- net-tools
- conntrack-tools
- coreutils
- curl
- wget
- drill
- iperf3
- iproute2
- iptables
- iputils
- ip6tables
- keepalived
- nftables
- socat
- netcat-openbsd
- bind-tools
- ethtool
- mtr
- tcpdump
- lshw
- nmap
- web terminal port : 7681

## Build & Run
```bash
docker build -t cylin2000/nettools .
docker run -p 7681:7681 docker.io/cylin2000/nettools
```

## Publish
```bash
docker push cylin2000/nettools
```

