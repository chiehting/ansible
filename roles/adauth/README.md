ADauth role
=========

Integrate Linux systems with Microsoft Active Directory.

Requirements
------------

For version 1.8.6 sssd has used the hostname$@DOMAIN.NAME principal to retrieve a TGT for LDAP access.

Role Variables
--------------

`realm_path` 指realm執行檔位置
`realm_vars.client_software` 預設使用sssd來做連線

`sssd_conf_path` sssd設定檔案位置
`sssd_conf_vars.use_fully_qualified_names` 是否需使用網域名稱
`sssd_conf_vars.fallback_homedir` 家目錄路徑

Dependencies
------------

None.

Example Playbook
----------------

```
- hosts: localhost
  become: yes
  roles:
    - hostname
    - adauth
```

License
-------

BSD / MIT

Author Information
------------------

None.

