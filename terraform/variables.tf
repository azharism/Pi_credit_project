variable "region" { default = "ap-northeast-1" }
variable "vpc_cidr" { default = "10.0.0.0/16" }
variable "public_subnets" { default = ["10.0.1.0/24","10.0.2.0/24"] }
variable "private_subnets" { default = ["10.0.11.0/24","10.0.12.0/24"] }
variable "azs" { default = ["ap-northeast-1a","ap-northeast-1c"] }
variable "state_bucket" {}
variable "lock_table" { default = "terraform-locks" }
variable "project_name" { default = "tokyo-webapp" }
variable "db_username" { default = "dbuser" }
variable "db_password" { default = "ChangeMe123!" }
variable "app_port" { default = 8080 }
variable "ssh_key_name" { default = "" }
variable "allowed_ssh_cidr" { default = "0.0.0.0/0" }