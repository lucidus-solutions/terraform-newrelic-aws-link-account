variable "account_id" {
  type        = string
  description = "The New Relic account ID"
  sensitive   = true
}

variable "app" {
  type        = string
  description = "The name of the application or project that the stack supports"
  sensitive   = false
}

variable "arn" {
  type        = string
  description = "The ARN of the readonly role that New Relic assumes"
  sensitive   = false
}

variable "env" {
  type        = string
  description = "The target environment for the stack - could be a tier or account level reference"
  validation {
    condition     = contains(["dev", "qa", "stage", "prod", "demo", "perf", "nonprod", "prod"], var.env)
    error_message = "Must be one of the following: dev, qa, stage, prod, demo, perf,nonprod, prod"
  }
  sensitive = false
}

variable "metric_collection_mode" {
  type        = string
  description = "Defines how data makes it way to New Relic - either PUSH or PULL"
  default     = "PUSH"
  sensitive   = false
}

variable "program" {
  type        = string
  description = "The name of the program that the application or project belongs to"
  sensitive   = false
}
