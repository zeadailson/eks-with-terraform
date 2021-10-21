variable "cluster_name" {
  default = "eks-teste"
}

variable "aws_region" {
  default = "us-east-2"
}

variable "k8s_version" {
  default = "1.21"
}

/*variable "nodes_instances_sizes" {
  default = [
    "t3a.medium"
  ]
}*/

variable "auto_scale_options" {
  default = {
    min     = 2
    max     = 10
    desired = 2
  }
}

variable "nlb_ingress_internal" {
  type    = bool
  default = false
}

variable "nlb_ingress_type" {
  type    = string
  default = "network"
}

variable "proxy_protocol_v2" {
  type    = bool
  default = false
}

variable "nlb_ingress_enable_termination_protection" {
  type    = bool
  default = false
}

variable "enable_cross_zone_load_balancing" {
  type    = bool
  default = true
}

variable "default_tags" {
  default = {
    Environment = "hml"
  }
}