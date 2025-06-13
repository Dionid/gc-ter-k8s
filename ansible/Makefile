init: ## Run ansible-playbook for initilization
	ansible-playbook ./playbook.yml -i ./inventories/hosts --tags init

# Master

provision-master: ## Run ansible-playbook
	ansible-playbook ./playbook.yml -i ./inventories/hosts --tags provision_master

install-cni-cilium: ## Run ansible-playbook
	ansible-playbook ./playbook.yml -i ./inventories/hosts --tags install_cni_cilium

install-argocd: ## Run ansible-playbook
	ansible-playbook ./playbook.yml -i ./inventories/hosts --tags install_argocd

# Worker

provision-workers: ## Run ansible-playbook
	ansible-playbook ./playbook.yml -i ./inventories/hosts --tags provision_workers

# DANGEROUS

WARNING-reset-all:
	ansible-playbook ./playbook.yml -i ./inventories/hosts --tags WARNING-reset-all