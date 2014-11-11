# Salt-Master Image
#

FROM debian:wheezy

ADD assets/apt/saltstack.key /tmp/saltstack.key

RUN apt-key add /tmp/saltstack.key \
    && rm /tmp/saltstack.key \
    && echo "deb http://debian.saltstack.com/debian wheezy-saltstack main" \
        > /etc/apt/sources.list.d/saltstack.list \
    && apt-get update \
    && apt-get install -y salt-master \
    && rm -rf /var/lib/apt/lists/*

ADD assets/salt/master /etc/salt/master

ENTRYPOINT ["salt-master"]
