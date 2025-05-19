variable "project-id" {
  description = "Google Cloud project id"
  type        = string
}

variable "master_node" {
  description = "settings for master node"
  type = object({
    machine_name = string
    machine_type = string
    image_name   = string
    zone         = string
  })
  default = {
    machine_name = "k8s-master"
    machine_type = "e2-medium"
    image_name   = "ubuntu-2404-lts-amd64"
    zone         = "us-central1-c"
  }
}

variable "worker_nodes" {
  description = "settings for worker nodes"
  type = list(object({
    machine_name = string
    machine_type = string
    image_name   = string
    zone         = string
  }))
  default = [
    {
      machine_name = "k8s-worker-example"
      machine_type = "e2-medium"
      image_name   = "ubuntu-2404-lts-amd64"
      zone         = "us-central1-c"
    }
  ]
}