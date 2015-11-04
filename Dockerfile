FROM ubuntu:latest
MAINTAINER Mike Mackintosh <m@zyp.io>

RUN apt-get install -y software-properties-common
RUN apt-add-repository ppa:brightbox/ruby-ng-experimental
RUN apt-get update
RUN apt-get install -y ruby2.1 ruby2.1-dev
RUN apt-get install -y \
        build-essential \
        zlib1g-dev \
        libxml2-dev \
        libxslt1-dev \
        git \
        awscli \
        jekyll

RUN gem install bundler

CMD ["/bin/bash"]
