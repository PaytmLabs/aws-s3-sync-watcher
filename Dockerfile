FROM amazon/aws-cli:2.0.29

RUN rpm -ivh https://dl.fedoraproject.org/pub/epel/epel-release-latest-7.noarch.rpm && \
    yum update -y && \
    yum install -y inotify-tools jq

ENTRYPOINT /bin/sh