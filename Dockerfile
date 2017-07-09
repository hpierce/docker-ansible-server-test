#
# Base Dockerfile
#
#
FROM hpierce/docker-ansible-server

MAINTAINER Hugh Pierce

ENV DEBIAN_FRONTEND noninteractive

# Add sample yaml scripts
ADD root /root

RUN cd /etc/ansible/roles && git clone \
    https://github.com/hpierce/ansible-lemp-ubuntu-test.git


