variable "name" {
  type        = string
  description = "Resource Group name"
}

variable "location" {
  type        = string
  description = "Resource Group location"
}

variable "tags" {
  type        = map(string)
  description = "Tags for the Resource Group"
  default     = {}
}