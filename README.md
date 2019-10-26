# Ansible

Ansible部署腳本

## Getting Started

配置主機資訊再inventories裡,之後下命令`make ping`配置是否正確

```text
.
├── Makefile
├── README.md
├── ansible.cfg
├── ansible_password
├── inventories
│   └── test
├── logs
├── playbooks
│   └── test
└── roles
    ├── adauth
    ├── bases
    ├── docker
    ├── firewall
    ├── git
    ├── hostname
    ├── kubernetes
    ├── nginx
    ├── test
    └── users
```

* [ansible](https://github.com/ansible/ansible)

### Prerequisites

* [ansible](https://docs.ansible.com/ansible/latest/installation_guide/intro_installation.html)
* [docker-ansible](https://github.com/chiehting/docker-ansible)

## Running

### 確認Makefile的任務

```bash
make
```

### 確認主機連線

```bash
make ping
```


