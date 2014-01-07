# nginx 
#
# VERSION 1.0

# use the centos base image provided by docker
FROM centos

MAINTAINER toyama satoshi, toyamarinyon@gmail.com

# make sure the package repository is up to date
ADD nginx.repo /etc/yum.repos.d/nginx.repo
RUN chmod 0644 /etc/yum.repos.d/nginx.repo
RUN yum update -y

# install nginx
RUN yum install -y nginx
