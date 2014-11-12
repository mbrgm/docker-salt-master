# Salt-Master Image
#

FROM mbrgm/salt-master-base

EXPOSE 4505
EXPOSE 4506

ENTRYPOINT ["salt-master"]
