# Google Cloud self-managed K8S cluster

# Features

1. Provision infra by Terraform
1. Provision k8s by Ansible

# Stack

1. Terraform
1. Ansible
1. Flannel
1. MetalLB
1. cert-manager
1. ArgoCD

# TODO

1. Vault
1. PG master-slave (Patroni)
1. Kafka master-slave (Strimzi)
1. App + Docker + Github Actions (dev / stage / prod) (test / migrations / build / deploy)
1. VitoriaMetrics + Grafana
1. VictoriaLogs + Vector
1. Grafana Tempo / ClickHouse
1. keycloak
1. zsh
1. Rancher
1. Cilium / Callico
1. Flagger
1. cert-manager + MetalLB -> ArgoCD

1. Connect Vault to Gitlab CI/CD
1. Connect Vault to ArgoCD

# Links

1. https://github.com/bmf-san/setup-kubernetes-cluster-on-vps-boilerplate/tree/main
1. https://github.com/nnellans/ansible-k8s/tree/main
1. https://github.com/kubernetes-sigs/kubespray
1. https://github.com/kelseyhightower/kubernetes-the-hard-way
1. https://landscape.cncf.io/
