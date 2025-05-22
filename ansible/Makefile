init: ## Run ansible-playbook for initilization
	ansible-playbook ./playbook.yml -i ./inventories/hosts --tags init

provision: ## Run ansible-playbook
	ansible-playbook ./playbook.yml -i ./inventories/hosts --tags deploy

provision-master: ## Run ansible-playbook
	ansible-playbook ./playbook.yml -i ./inventories/hosts --tags deploy_master

provision-master-cni: ## Run ansible-playbook
	ansible-playbook ./playbook.yml -i ./inventories/hosts --tags deploy_cni_calico

provision-worker: ## Run ansible-playbook
	ansible-playbook ./playbook.yml -i ./inventories/hosts --tags deploy_worker
