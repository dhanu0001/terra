variable "AWS_ACCESS_KEY" {}
variable "AWS_SECRET_KEY" {}
variable "AWS_REGION" {
default = "ap-south-1"
}

variable "Security_Group" {
    type = list
    default = ["sg-24879", "sg-123456", "sg-789456"]  
}