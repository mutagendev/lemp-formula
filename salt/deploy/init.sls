authorized_keys:
  file.managed:
    - name: /root/.ssh/authorized_keys
    - source: salt://deploy/authorized_keys
    - makedirs: True
    - mode: 600
