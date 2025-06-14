# Google Cloud self-managed K8S cluster

# Features

1. Provision infra by Terraform
1. Provision k8s by Ansible

# Stack

1. Terraform
1. Ansible
1. k8s
1. Cilium
1. cert-manager
1. ArgoCD

# Install

1. `cd terraform`
    1. `terraform apply -var-file=./secret.tfvars`
1. `cd ansible`
    1. `make prepare-machines`
    1. `make provision-master`
    1. `make provision-workers`
    1. `make install-cilium`
    1. `make install-argocd`
    1. `make install-cert-manager`
1. `make get-kube-config`
1. ...

# TODO

1. Prometheus + Grafana
1. Loki + Vector
1. Cilium Hubble + Prometheus
1. Vault
1. PG master-slave (Patroni)
1. Kafka master-slave (Strimzi)
1. Redis
1. App + Docker + Github Actions (dev / stage / prod) (test / migrations / build / deploy)
1. Nginx Ingress Controller
1. Grafana Tempo / ClickHouse
1. keycloak
1. Rancher
1. Callico
1. Flagger

# Links

1. https://github.com/bmf-san/setup-kubernetes-cluster-on-vps-boilerplate/tree/main
1. https://github.com/nnellans/ansible-k8s/tree/main
1. https://github.com/kubernetes-sigs/kubespray
1. https://github.com/kelseyhightower/kubernetes-the-hard-way
1. https://landscape.cncf.io/
