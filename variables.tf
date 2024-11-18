variable "cidr_range" {
  description = "CIDR range for the vnet"
  type        = string
}

variable "compute_prefix" {
  description = "Prefix for the compute resources"
  type        = string
}

variable "compute_suffix" {
  description = "Suffix for the compute resources"
  type        = string
}

variable "db_prefix" {
  description = "Prefix for the database resources"
  type        = string
}

variable "db_suffix" {
  description = "Suffix for the database resources"
  type        = string
}

variable "location" {
  description = "Location for the network resources"
  type        = string
}

variable "network_prefix" {
  description = "Prefix for the network resources"
  type        = string
}

variable "network_suffix" {
  description = "Suffix for the network resources"
  type        = string
}

variable "subnets" {
  description = "Subnets for the vnet"
  type        = map(list(string))
}

variable "tags" {
  description = "Common tags for the resources"
  type        = map(string)
}

variable "vm_sku_size" {
  description = "Size of the VM"
  type        = string
  default     = "Standard_B1s"
}

variable "vm_zone" {
  description = "Zone for the VM"
  type        = string
  default     = "1"
}
