// Digital Ocean SSH Fingerprint
variable "ssh_public_key" {
  description = "SSH key applied to droplets."
  default = "~/.ssh/id_rsa.pub"
}

// Packer Image #
variable "image" {
  type = "string"
}

// Image name
variable "name" {
  type = "string"
}

// Region
variable "region" {
  type = "string"
}

// Size
variable "size" {
  type = "string"
}

// Count
variable "count" {
  type = "string"
}