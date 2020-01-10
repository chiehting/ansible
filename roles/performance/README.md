performance role
=========

調整linux的設定.

包括:
  ulimit
  sysctl
  transaction homepage

Requirements
------------

None.

Role Variables
--------------

`sysctl_conf` 變數會將list的變數寫入至/etc/sysctl.conf.

```yaml
sysctl_conf:
  - net.core.somaxconn: 32768
  - vm.overcommit_memory: 1
```

disable Transparent Huge pages. 配置成systemd, 重啟會生效.

```bash
disable_thg: yes
```

`limits_conf` 變數會將list的變數寫入至/etc/security/limits.conf.

```bash
limits_conf:
  - { domain: '*', limit_type: 'hard', limit_item: 'nproc', value: 65535 }
  - { domain: '*', limit_type: 'soft', limit_item: 'nproc', value: 65535 }
  - { domain: '*', limit_type: 'hard', limit_item: 'nofile', value: 65535 }
  - { domain: '*', limit_type: 'soft', limit_item: 'nofile', value: 65535 }
```


Dependencies
------------

None.

Example Playbook
----------------


```yaml
- hosts: all
  become: yes
  vars:
    sysctl_conf:
      - net.core.somaxconn: 32768
      - vm.overcommit_memory: 1
    disable_thg: yes
    limits_conf:
      - { domain: '*', limit_type: 'hard', limit_item: 'nproc', value: 65535 }
      - { domain: '*', limit_type: 'soft', limit_item: 'nproc', value: 65535 }
      - { domain: '*', limit_type: 'hard', limit_item: 'nofile', value: 65535 }
      - { domain: '*', limit_type: 'soft', limit_item: 'nofile', value: 65535 }
  roles:
    - performance
```


License
-------

BSD / MIT

Author Information
------------------

None.
