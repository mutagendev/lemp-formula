include:
  - lemp.deploy


nginx:
  pkg:
    - latest
  service:
    - running
    - enable: True
  require:
    - file: authorized_keys


php5-fpm:
  pkg:
    - latest
  service:
    - running
    - enable: True

mysql-server:
  pkg:
    - latest
  service:
    - running
    - enable: True

mysql-client:
  pkg:
    - latest
