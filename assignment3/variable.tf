variable "instance_type" {
  type        = list(string)
  description = "Type of instance"
}

variable "amis" {
  type        = list(string)
  description = "ami id"
}
variable "name" {
  type    = string
  default = "piyush-eq"
}
variable "owner" {
  type        = string
  description = "Owner"
  default     = "piyush.sharma@cloudeq.com"
}
variable "assignment" {
  type    = string
  default = "Sprint2"
}
variable "subnet_id" {
  type        = list(string)
  description = "subnet id"

}

variable "iterations" {
  type        = map(any)
  description = "Map"

}