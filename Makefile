

get-kube-config:
	scp ubuntu@${MASTER_NODE_IP}:~/.kube/config ./kube_config