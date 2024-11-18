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

variable "vm_subnet_id" {
  description = "Subnet ID for the VM"
  type        = string
}