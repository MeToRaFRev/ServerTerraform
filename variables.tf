variable "instance_name" {
    description = "Name of the instance"
    type = string
    default = "Coolify Instance"
}
variable "ec2_instance_type" {
    description = "Type of the instance"
    type = string
    default = "t3.micro"
}
variable "ec2_image_id" {
    description = "AMI ID of the instance"
    type = string
    default = "ami-00f251754ac5da7f0"
}