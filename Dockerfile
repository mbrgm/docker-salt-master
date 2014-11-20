# Salt-Master Image
#

FROM mbrgm/salt-master-base

ADD assets/salt/master-server-fixed.conf /etc/salt/master.d/
ADD assets/salt/master-server-configurable.conf.template \
    /app/master-server-configurable.conf.template
ADD assets/init /app/init

RUN chmod 755 /app/init

EXPOSE 4505
EXPOSE 4506

ENTRYPOINT ["/app/init"]
