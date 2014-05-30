{% from "lemp/map.jinja" import nginx, mysql, php5-fpm with context %}

nginx:
  pkg:
    - latest
    - name: {{ nginx.package }}
  service:
    - running
    - enable: True
    - name: {{ nginx.service }}

php5-fpm:
  pkg:
    - latest
    - name: {{ php5-fpm.package }}
  service:
    - running
    - enable: True
    - name: {{ php5-fpm.service }}
    - require:
      - pkg: nginx

mysql-server:
  pkg:
    - latest
    - name: {{ mysql.server }}
  service:
    - running
    - enable: True
    - name: {{ mysql.service }}

mysql-client:
  pkg:
    - latest
    - name: {{ mysql.client }}
