{% from "lemp/map.jinja" import mysql with context %}

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
