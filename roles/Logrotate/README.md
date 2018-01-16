
Ansible Logrotate Role
========

Playbook Overview
------------

Generates logrotate configs and provides an easy way to setup additional logrotate scripts by specifying a list of directives.



### Logrotate configuration

```
# rotate log files weekly
weekly

# use the syslog group by default, since this is the owning group
# of /var/log/syslog.
su root syslog

# keep 4 weeks worth of backlogs
rotate 4

# create new (empty) log files after rotating old ones
create

# uncomment this if you want your log files compressed
#compress

# packages drop log rotation information into this directory
include /etc/logrotate.d

# no packages own wtmp, or btmp -- we'll rotate them here
/var/log/wtmp {
    missingok
    monthly
    create 0664 root utmp
    rotate 1
}

/var/log/btmp {
    missingok
    monthly
    create 0660 root utmp
    rotate 1
}

```

### Logrotate configuration for applications

Following applications are included into Logrotate configuration. Configs for each application located under `/etc/logrotate.d`

```
 apport
 apt
 dpkg
 hadoop
 lxd
 opsworks-agent
 postgresql-common
 rsyslog

```

### Role Variables

Available variables are listed below, along with default values (see `defaults/main.yml`):

```
lr_main_config_file:  /etc/logrotate.conf
lr_packages_config_dir: /etc/logrotate.d

lr_owner_usr: root
lr_owner_grp: root

```


### Test deployment execution

```
ansible-playbook -i ./inventories --limit "hdp-nodes-dev-for-test" --extra-vars "env=dev" ./roles/Logrotate/test/test.yml -vv

```

---
