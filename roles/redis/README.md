redis role
=========

架設Redis服務,可以配制Redis或Redis Cluster.

Requirements
------------



Role Variables
--------------

Redis下載版本.

```yaml
redis_version: "redis-5.0.7"
redis_source_url: "http://download.redis.io/releases/{{ redis_version }}.tar.gz"
```

Redis環境配置.

```yaml
redis_user: redis
redis_group: redis
redis_home_dir: /opt/redis
redis_sys_dir: /etc/redis
redis_log_dir: /var/log/redis
redis_pid_dir: /var/run/redis
redis_install_prefix: /usr/local
```

Redis configuration配置.

```yaml
redis_cluster_replicas: 1
redis_config_requirepass: password
redis_config_ports: ["6379"]
redis_cluster_enable: false
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
    firewall_allowed_tcp_ports: ["22", "7000", "7001", "7002", "7003", "7004", "7005"]
    sysctl_conf:
      - net.core.somaxconn: 32768
      - vm.overcommit_memory: 1
    disable_thg: yes
    limits_conf:
      - { domain: '*', limit_type: 'hard', limit_item: 'nproc', value: 65535 }
      - { domain: '*', limit_type: 'soft', limit_item: 'nproc', value: 65535 }
      - { domain: '*', limit_type: 'hard', limit_item: 'nofile', value: 65535 }
      - { domain: '*', limit_type: 'soft', limit_item: 'nofile', value: 65535 }
    redis_config_requirepass:
    redis_cluster_enable: true
    redis_config_ports: ["7000", "7001", "7002", "7003", "7004", "7005"]
  roles:
    - firewall
    - performance
    - redis
```

License
-------

BSD / MIT

Author Information
------------------

None.
