# Docker stack configurations

Usage:

```command
ansible-playbook --inventory inventories/docker playbooks/docker-stack-BbB.yml
```

IOC settings are located at modify the contents of [playbooks/vars](playbooks/vars).

The output file location is using the role default and can be overridden.

Install roles:
```bash
set -x
roles="cnpem-gas-ansible-role-docker-BbB  cnpem-gas-ansible-role-docker-DCCT  cnpem-gas-ansible-role-docker-timing"
for role in ${roles}; do
    ln --relative --symbolic ../${role} roles/${role}
done
```

## Dependencies

Each role must be installed separatly inside [roles/](roles/)

| role   | url                                                        |
| ------ | ---------------------------------------------------------- |
| BbB    | https://github.com/carneirofc/cnpem-gas-ansible-role-docker-BbB    |
| DCCT   | https://github.com/carneirofc/cnpem-gas-ansible-role-docker-DCCT   |
| timing | https://github.com/carneirofc/cnpem-gas-ansible-role-docker-timing |
