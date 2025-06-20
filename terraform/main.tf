terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "6.8.0"
    }
  }
}

provider "google" {
  project = var.project-id
  region  = "us-central1"
  zone    = "us-central1-c"
}

resource "google_compute_network" "vpc_network" {
  name = "k8s-network"
}

resource "google_compute_firewall" "k8s-firewall" {
  name    = "k8s-firewall"
  network = google_compute_network.vpc_network.self_link

  allow {
    protocol = "tcp"
    ports    = ["22", "6443"]
  }

  allow {
    protocol = "icmp"
  }

  source_ranges = ["0.0.0.0/0"]
}

resource "google_compute_firewall" "k8s-firewall-internal" {
  name    = "k8s-firewall-internal"
  network = google_compute_network.vpc_network.self_link

  allow {
    protocol = "tcp"
  }

  allow {
    protocol = "udp"
  }

  allow {
    protocol = "icmp"
  }

  allow {
    protocol = "ipip"
  }

  source_ranges = ["10.128.0.0/9"]
}

module "master_instance" {
  source = "./modules/gc-k8s-node"

  image_name   = var.master_node.image_name
  machine_name = var.master_node.machine_name
  machine_type = var.master_node.machine_type
  zone         = var.master_node.zone
  network = google_compute_network.vpc_network.self_link
  network_ip = var.master_node.network_ip
}

module "worker_instance" {
  for_each = { for i, v in var.worker_nodes : i => v }

  source = "./modules/gc-k8s-node"

  image_name   = each.value.image_name
  machine_name = each.value.machine_name
  machine_type = each.value.machine_type
  zone         = each.value.zone
  network_ip = each.value.network_ip
  network = google_compute_network.vpc_network.self_link
}

resource "local_file" "save_hosts" {
  content = templatefile("./templates/hosts.tpl", {
    master_machine_name = (var.master_node.machine_name)
    master_machine_ip   = (module.master_instance.ip)
    worker_nodes     = var.worker_nodes
    worker_ips       = module.worker_instance
  })
  filename = "../ansible/inventories/hosts"

  depends_on = [
    module.master_instance,
    module.worker_instance,
  ]
}
