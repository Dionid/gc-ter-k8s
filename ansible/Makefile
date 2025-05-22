init: ## Run ansible-playbook for initilization
	ansible-playbook ./playbook.yml -i ./inventories/hosts --tags init

provision-all: ## Run ansible-playbook
	ansible-playbook ./playbook.yml -i ./inventories/hosts --tags deploy

provision-master: ## Run ansible-playbook
	ansible-playbook ./playbook.yml -i ./inventories/hosts --tags deploy_master

provision-master-cni-flannel: ## Run ansible-playbook
	ansible-playbook ./playbook.yml -i ./inventories/hosts --tags deploy_cni_flannel

provision-worker: ## Run ansible-playbook
	ansible-playbook ./playbook.yml -i ./inventories/hosts --tags deploy_worker

WARNING-reset-all:
	ansible-playbook ./playbook.yml -i ./inventories/hosts --tags WARNING-reset-all