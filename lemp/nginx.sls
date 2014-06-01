{% from "lemp/map.jinja" import nginx with context %}

nginx:
  pkg:
    - latest
    - name: {{ nginx.package }}
  service:
    - running
    - enable: True
    - name: {{ nginx.service }}
