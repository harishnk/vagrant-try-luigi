source /home/vagrant/venv/bin/activate && pip install -r /home/vagrant/code/requirements.txt:
  cmd.run

/etc/luigi/client.cfg:
  file.managed:
    - source: salt://luigi.cfg
    - user: vagrant
    - group: vagrant
    - mode: 644
    - makedirs: True

#TODO: create 'logs' folder, and other files for running luigi?
