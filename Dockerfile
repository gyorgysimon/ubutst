FROM docker.io/library/ubuntu:18.04
RUN apt-get update -y && apt-get install -y telnet traceroute iputils-ping curl wget net-tools openssl && apt-get clean all

ENTRYPOINT ["tail"]
CMD ["-f","/dev/null"]
