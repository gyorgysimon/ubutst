FROM docker.io/library/ubuntu:18.04
RUN apt-get update -y && apt-get install -y telnet traceroute iputils-ping sudo

RUN adduser gsimon
USER gsimon

ADD gsimon /etc/sudoers.d/gsimon

ENTRYPOINT ["tail"]
CMD ["-f","/dev/null"]
