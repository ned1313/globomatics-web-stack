variable "prefix" {
  description = "Prefix for the resources"
  type        = string
}

variable "suffix" {
  description = "Suffix for the resources"
  type        = string
}

variable "location" {
  description = "Location for the resources"
  type        = string
}

variable "cidr_range" {
  description = "CIDR range for the vnet"
  type        = string
}

variable "subnets" {
  description = "Subnets for the vnet"
  type        = map(list(string))
}

variable "tags" {
  description = "Tags for the resources"
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