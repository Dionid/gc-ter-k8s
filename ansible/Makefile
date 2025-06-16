# Setup

setup:
	ansible-galaxy collection install -r requirements.yml

# Prepare machines

prepare-machines: ## Run ansible-playbook for initilization
	ansible-playbook ./playbook.yml -i ./inventories/hosts --tags init

# Master

provision-master: ## Run ansible-playbook
	ansible-playbook ./playbook.yml -i ./inventories/hosts --tags provision-master

install-cni-cilium: ## Run ansible-playbook
	ansible-playbook ./playbook.yml -i ./inventories/hosts --tags install-cni-cilium

install-argocd: ## Run ansible-playbook
	ansible-playbook ./playbook.yml -i ./inventories/hosts --tags install-argocd

install-cert-manager: ## Run ansible-playbook
	ansible-playbook ./playbook.yml -i ./inventories/hosts --tags install-cert-manager

install-monitoring: ## Run ansible-playbook
	ansible-playbook ./playbook.yml -i ./inventories/hosts --tags install-monitoring

install-sci: ## Run ansible-playbook
	ansible-playbook ./playbook.yml -i ./inventories/hosts --tags install-gc-sci

# Worker

provision-workers: ## Run ansible-playbook
	ansible-playbook ./playbook.yml -i ./inventories/hosts --tags provision-workers

# DANGEROUS

WARNING-reset-all:
	ansible-playbook ./playbook.yml -i ./inventories/hosts --tags WARNING-reset-all