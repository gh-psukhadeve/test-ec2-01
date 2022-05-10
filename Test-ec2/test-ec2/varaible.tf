variable "name" {
  default     = ""
  description = "name of the Ec2-instance"

}
variable "ami" {
  default     = ""
  description = "ami-id of ec2 instance"
}
variable "region" {
  default     = ""
  description = "ec2 region"

}
variable "instance_type" {
  type = string 
  description = " provide instance type eg.t2.micro"
}
variable "vpc_security_group_ids" {
  type = list(string)
  description = "assign vpc security group id "
}
variable "subnet_id" {
  type = string 
  description = "provide subnet id where ec2 instance lounch"
}
variable "tags" {
  description = "(Optional) A mapping of tags to assign to the instance."
  type        = map(string)
  
}
variable "vpc" {
  default = " "
}