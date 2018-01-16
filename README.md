# devops-config-management
For all configuration management tasks

## Usage
First off, update AWS creds in /lib/ec2.ini, then apply profie with
```bash
. ansible-env.sh
```


Command to install Ansible deps on target machines
```bash
ansible -m raw -a 'sudo apt-get -y install python-simplejson' tag_Name_devops_eu_west_1_jenkins_jmeter_2:devops_eu_west_1_jenkins_jmeter_3
```

Install/Upgrade package
```bash
ansible -m shell -a 'sudo apt-get install -y datadog-agent' tag_Purpose_jenkins
```

Run playbook:
```bash
ansible-playbook devops.yml --tags "datadog" --private-key=/Users/user1/global-devops-admin
```

To evolve the directory structure please refer to [best practices](http://docs.ansible.com/ansible/latest/playbooks_best_practices.html#directory-layout).

.
