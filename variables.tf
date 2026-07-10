variable "listenerset_name" {
  type        = string
  description = "Name of the shared platform ListenerSet that the HTTPRoute should reference"
  default     = "default-listenerset"
}

variable "listenerset_namespace" {
  type        = string
  description = "Namespace of the shared platform ListenerSet that the HTTPRoute should reference"
  default     = "envoy-gateway-system"
}

variable "hostnames" {
  type        = list(string)
  description = "Hostnames for the HTTPRoute"
  default     = []

  validation {
    condition     = !var.enable_httproute || (length(var.hostnames) > 0 && alltrue([for hostname in var.hostnames : trimspace(hostname) != ""]))
    error_message = "hostnames must contain at least one non-empty hostname when enable_httproute is true."
  }
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
