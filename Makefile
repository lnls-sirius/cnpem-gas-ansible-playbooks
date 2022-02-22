vagrant-conda:
	ansible-playbook \
		--limit 'vagrant' \
		-vv -i inventories/servers \
		-u vagrant \
		playbooks/conda-setup.yml

deploy-olog:
	ansible-playbook \
		-e inventory=inventories/servers \
		-e ansible_python_interpreter=/home/carneirofc/CNPEM/Ansible/lnls-ansible/.venv/bin/python \
		--inventory ./inventories/servers/ \
		--verbose \
		--ask-pass \
		--ask-vault-password \
		--ask-become-pass \
		--diff \
		playbooks/olog-deploy.yml
