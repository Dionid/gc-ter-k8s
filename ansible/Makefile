init: ## Run ansible-playbook for initilization
	ansible-playbook ./playbook.yml -i ./inventories/hosts --tags init

provision: ## Run ansible-playbook
	ansible-playbook ./playbook.yml -i ./inventories/hosts --tags deploy --ask-become-pass
