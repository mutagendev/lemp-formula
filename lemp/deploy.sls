authorized_keys:
  file.managed:
    - name: /root/.ssh/authorized_keys
    - source: salt://nginx/authorized_keys
    - makedirs: True
    - mode: 600
