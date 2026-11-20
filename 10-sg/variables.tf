variable "project" {
  default = "roboshop"
}

variable "environment" {
  default = "dev"
}

/* variable "sg_name" {
  
} */

# variable "vpc_id" {

  
# }

variable "sg_names" {
  default = [
    "mongodb","redis","mysql","rabbitmq",
    "catalogue","user","shipping","payment","cart",
    "backend_alb",
    "fronend",
    "frontend_alb",
    "bastion","vpn"
  ]
}