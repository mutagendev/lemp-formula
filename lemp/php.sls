{% from "lemp/map.jinja" import php5-fpm with context %}

php5-fpm:
  pkg:
    - latest
    - name: {{ php5-fpm.package }}
  service:
    - running
    - enable: True
    - name: {{ php5-fpm.service }}
