variable "project" {
  description = "Name to be used on all the resources as identifier"
  type        = string
}

variable "environment" {
  description = "The environment, and also used as a identifier"
  type        = string
}

variable "region" {
  description = "Region AWS where deploy occurs"
  type        = string
  default     = "us-east-1"
}