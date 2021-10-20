# Docker stack configurations

Use the command `ansible-playbook` according to the following example:

```command
ansible-playbook --inventory inventories/docker playbooks/<playbook_name>.yml
```

IOC settings are located at modify the contents of [playbooks/vars](playbooks/vars).

The output file location is using the role default and can be overridden.

Install roles cloning the corresponding role into `roles/` subdirectory:

```bash
mkdir ./roles
cd ./roles
git clone https://github.com/carneirofc/cnpem-gas-ansible-role-docker-BbB
git clone https://github.com/carneirofc/cnpem-gas-ansible-role-docker-DCCT
git clone https://github.com/carneirofc/cnpem-gas-ansible-role-docker-fout
git clone https://github.com/carneirofc/cnpem-gas-ansible-role-docker-scrn
git clone https://github.com/carneirofc/cnpem-gas-ansible-role-docker-timing
cd -
```

## Roles

| URL                                                                |
| ------------------------------------------------------------------ |
| https://github.com/carneirofc/cnpem-gas-ansible-role-docker-BbB    |
| https://github.com/carneirofc/cnpem-gas-ansible-role-docker-DCCT   |
| https://github.com/carneirofc/cnpem-gas-ansible-role-docker-fout   |
| https://github.com/carneirofc/cnpem-gas-ansible-role-docker-scrn   |
| https://github.com/carneirofc/cnpem-gas-ansible-role-docker-timing |
