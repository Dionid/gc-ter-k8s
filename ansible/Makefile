init: ## Run ansible-playbook for initilization
	ansible-playbook ./playbook.yml -i ./inventories/hosts --tags init

provision-all: ## Run ansible-playbook
	ansible-playbook ./playbook.yml -i ./inventories/hosts --tags deploy

# Master

provision-master: ## Run ansible-playbook
	ansible-playbook ./playbook.yml -i ./inventories/hosts --tags deploy_master

install-cni-flannel: ## Run ansible-playbook
	ansible-playbook ./playbook.yml -i ./inventories/hosts --tags deploy_cni_flannel

install-argocd: ## Run ansible-playbook
	ansible-playbook ./playbook.yml -i ./inventories/hosts --tags deploy_argocd

install-ansible-kube: ## Run ansible-playbook
	ansible-playbook ./playbook.yml -i ./inventories/hosts --tags ansible-kube

# Worker

provision-worker: ## Run ansible-playbook
	ansible-playbook ./playbook.yml -i ./inventories/hosts --tags deploy_worker

# DANGEROUS

WARNING-reset-all:
	ansible-playbook ./playbook.yml -i ./inventories/hosts --tags WARNING-reset-all