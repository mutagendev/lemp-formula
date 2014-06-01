{% from "lemp/map.jinja" import mysql with context %}

{% if grains['os'] in ['Debian'] %}
mysql-debconf:
  debconf.set:
    - name: mysql-server
    - data:
      'mysql-server/root_password': {'type': 'password', 'value': '{{ mysql_root_password }}'}
      'mysql-server/root_password_again': {'type': 'password', 'value': '{{ mysql_root_password }}'}
      'mysql-server/start_on_boot': {'type': 'boolean', 'value': 'true'}

mysql-set-root-pw:
  cmd:
    - run
    - name: mysqladmin --user root password '{{ mysql_root_password|replace("'", "'\"'\"'") }}'
    - require:
      - service: mysqld

mysql-server:
  pkg:
    - latest
    - name: {{ mysql.server }}
    - require:
      - debconf: mysql-debconf
  service:
    - running
    - enable: True
    - name: {{ mysql.service }}

mysql-client:
  pkg:
    - latest
    - name: {{ mysql.client }}
