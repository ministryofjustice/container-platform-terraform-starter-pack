variable "gateway_name" {
  type        = string
  description = "Name of the Gateway resource that the HTTPRoute should reference"
}

variable "gateway_namespace" {
  type        = string
  description = "Namespace of the Gateway resource that the HTTPRoute should reference"
}

variable "hostnames" {
  type        = list(string)
  description = "Hostnames for the HTTPRoute"
}

variable "namespace" {
  type        = string
  description = "Namespace to create for the starter pack"
  default     = "starter-pack"
}

variable "enable_httproute" {
  type    = bool
  default = false
}

variable "image_repository" {
  type        = string
  description = "Container image repository"
}

variable "image_tag" {
  type        = string
  description = "Container image tag"
  default     = "1.0.0"
}
