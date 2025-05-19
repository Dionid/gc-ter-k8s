
variable "machine_name" {
    type = string
    description = "machine name for a node"
}

variable "machine_type" {
    type = string
    default = "e2-medium"
    description = "image name for a node"
}

variable "image_name" {
    type = string
    default = "ubuntu-2404-lts-amd64"
    description = "image name for a node"
}

variable "zone" {
    type = string
    default = "us-central1-c"
    description = "machine zone"
}

variable "network" {
    type = string
    description = "gc network"
}