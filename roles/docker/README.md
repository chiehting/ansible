Docker role 
=========

Install Docker && Docker Compose.

Requirements
------------

None.

Role Variables
--------------

Variables for Docker install.

  `docker_package_name` sould be `docker-ce` or `docker-ee`.

Variables for Docker Compose install.

  `docker_compose_veraion` is install version for docker-compose.
  `docker_compose_url` is url for get docker-compose binary file.
  `docker_compose_path` set docker-compose binary file path.

Varibles for operating system.
  `apt_key_url` apt key for Debian family.
  `apt_repository` apt repository for Debian family.
  `yum_repository` yum repository form RedHat family.

Dependencies
------------

None.

Example Playbook
----------------

```
- hosts: servers
  roles:
    - docker
```

License
-------

BSD / MIT

Author Information
------------------

None.
