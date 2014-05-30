nginx:
  pkg:
    - latest
  service:
    - running
    - enable: True

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
