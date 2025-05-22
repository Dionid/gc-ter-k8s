terraform {
    required_providers {
      google = {
        source  = "hashicorp/google"
        version = "6.8.0"
        }
    }
}

resource "google_compute_instance" "k8s-node" {
  name         = var.machine_name
  machine_type = var.machine_type
  zone         = var.zone
  tags         = ["k8s"]

  boot_disk {
    initialize_params {
      image = var.image_name
    }
  }

  network_interface {
    network       = var.network
    network_ip = var.network_ip
    access_config {
      // External IP
    }
  }

  metadata = {
    "serial-port-enable" = "true"
    ssh-keys = "ubuntu:${file("~/.ssh/id_rsa.pub")}"
  }
}
