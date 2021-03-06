FROM thenewvu/base
MAINTAINER Vu Le "thenewvu@gmail.com"

ARG   username
USER  root

include(`setup-oracle-jdk8.m4')
include(`setup-vertex-gtk-theme.m4')
include(`setup-webstorm.m4')
include(`setup-nodejs.m4')
include(`setup-git.m4')
include(`setup-python3-dev.m4')
include(`setup-python2-dev.m4')
include(`setup-subversion.m4')
include(`cleanup.m4')

USER  $username
WORKDIR /data/projects
ENTRYPOINT /opt/WebStorm-145.184.5/bin/webstorm.sh
