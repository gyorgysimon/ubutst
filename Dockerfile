FROM docker.io/library/ubuntu:18.04
RUN apt-get update -y && apt-get install -y telnet traceroute iputils-ping sudo

RUN adduser gsimon
USER gsimon

RUN mkdir -p /etc/sudoers.d/
RUN echo "gsimon	ALL=(ALL) NOPASSWD: ALL" > /etc/sudoers.d/gsimon

ENTRYPOINT ["tail"]
CMD ["-f","/dev/null"]
