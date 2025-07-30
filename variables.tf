variable "aws_region" {
  description = "Default region for reminder app"
  type        = string
  default     = "eu-west-1"
}

variable "docker_image" {
    description = "dockerhub image to deploy"
    type = string
    default = "eightbit128/nginx-interview:latest"
}

variable "instance_size" {
    type = string
    default = "t3.medium"
  
}

variable "cluster_version" {
    type = string
    default = "1.31"
}

variable "replica_min_size" {
    type = number
    default = 1
}

variable "replica_max_size" {
    type = number
    default = 2
}

variable "replica_desired_size" {
    type = number
    default = 1
}
