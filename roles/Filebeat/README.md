
Ansible FileBeat Role
========

Playbook Overview
------------
The playbook follows the classic Ansible playbook structure:

![](https://logz.io/wp-content/uploads/2017/08/playbook-overview.png)


Role Variables
--------------

Available variables are listed below, along with default values (see `defaults/main.yml`):

```

filebeat_config_dir: /etc/filebeat
filebeat_config_file: filebeat.yml
filebeat_owner_usr: root
filebeat_owner_grp: root

```




Prospectors that will be listed in the `prospectors` section of the Filebeat configuration. Read through the [Filebeat Prospectors configuration guide](https://www.elastic.co/guide/en/beats/filebeat/current/configuration-filebeat-options.html) for more options.


Test execution
--------------

To execute deployment of FileBeat configuration on *DEV* nodes only, run the following

```
ansible-playbook -i ./inventories --limit "hdp-nodes-dev" --extra-vars "env=dev" ./roles/Filebeat/test/test.yml -vv

```





---
