project-id = "pe-first"

master_node = {
  machine_name = "k8s-master"
  machine_type = "e2-medium"
  image_name   = "ubuntu-2404-lts-amd64"
  zone         = "us-central1-c"
  network_ip = "10.128.0.5"
}

worker_nodes = [
  {
    machine_name = "k8s-worker-1"
    machine_type = "e2-medium"
    image_name   = "ubuntu-2404-lts-amd64"
    zone         = "us-central1-c"
    network_ip = "10.128.0.6"
  },
  {
    machine_name = "k8s-worker-2"
    machine_type = "e2-medium"
    image_name   = "ubuntu-2404-lts-amd64"
    zone         = "us-central1-c"
    network_ip = "10.128.0.7"
  }
]
