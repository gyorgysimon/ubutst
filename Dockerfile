FROM docker.io/library/ubuntu:18.04
RUN apt-get update -y && apt-get install -y telnet traceroute iputils-ping curl wget net-tools podman

ENTRYPOINT ["tail"]
CMD ["-f","/dev/null"]
