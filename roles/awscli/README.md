awscli
=========

配置awscli

Requirements
------------

- unzip

Role Variables
--------------

awscli下載位置與安裝路徑.

```yaml
---
awscli_url: "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip"
bin_dir: "/usr/bin"
```

Dependencies
------------

None.

Example Playbook
----------------

```yaml
---
- hosts: all
  gather_facts: true
  become: yes
  vars:
  roles:
    - awscli
```


License
-------

BSD / MIT

Author Information
------------------

None.
