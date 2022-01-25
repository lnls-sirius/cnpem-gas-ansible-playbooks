# Docker stack configurations

Use the command `ansible-playbook` according to the following example:

```command
ansible-playbook --inventory inventories/docker playbooks/<playbook_name>.yml
```

in order to check connections

```command
ansible cluster \
    --module-name 'ping' \
    --inventory inventories/servers \
    --ask-pass \
    --ask-become-pass \
    --user <remote-user>
# or
ansible cluster \
    -m 'ping' \
    -i inventories/servers \
    -k \
    -K \
    -u <remote-user>
```
Using adhoc command, view output in the terminal, argument `--one-line` or `-o` will display the result in the terminal.
```command
ansible all \
    --module-name <command_name> \
    --inventory <inventory> \
    --ask-pass \
    --ask-become-pass \
    --user <user> \
    --args <command_args> \
    --one-line
```

We are using submodules Yay!!

```command
#  2.13 of Git and later
git clone --recurse-submodules -j$(nproc) https://github.com/carneirofc/cnpem-gas-ansible-playbooks

# version 1.9 of Git up until version 2.12 (-j flag only available in version 2.8+):
git clone --recursive -j8 https://github.com/carneirofc/cnpem-gas-ansible-playbooks

# already cloned repos, or older Git versions, use:
git submodule update --init --recursive
```

IOC settings are located at modify the contents of [playbooks/vars](playbooks/vars).

The output file location is using the role default and can be overridden.

Install roles cloning the corresponding role into `roles/` subdirectory.

## Roles

| URL                                                                |
| ------------------------------------------------------------------ |
| https://github.com/carneirofc/cnpem-gas-ansible-role-docker-BbB    |
| https://github.com/carneirofc/cnpem-gas-ansible-role-docker-DCCT   |
| https://github.com/carneirofc/cnpem-gas-ansible-role-docker-fout   |
| https://github.com/carneirofc/cnpem-gas-ansible-role-docker-scrn   |
| https://github.com/carneirofc/cnpem-gas-ansible-role-docker-timing |
...

## Testing
One can test using Vagrant or molecule. For a more interactive approach vagrant is a better choice.

```command
# general example
ansible-playbook -v -i Vagrant/hosts -u vagrant <playbook>
```

### debian 11 server setup playbook
```
ansible-playbook --limit 'vagrant'  -vvv -i inventories/servers -u vagrant playbooks/debian-server-setup.yml
```
one can use the `--limit` parameter to include/exclude host groups eg: `!vagrant` excludes vagrant hosts. `:` is the host group separator for the limit argument.
