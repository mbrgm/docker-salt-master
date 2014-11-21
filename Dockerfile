# Salt-Master Image
#

FROM mbrgm/salt-master-base

ADD assets/salt/master-fixed.conf /etc/salt/master.d/
ADD assets/salt/master-configurable.conf.template /app/
ADD assets/init /app/init

RUN chmod 755 /app/init

EXPOSE 4505
EXPOSE 4506

ENTRYPOINT ["/app/init"]
