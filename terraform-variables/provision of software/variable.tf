variable "AWS_ACCESS_KEY" {
    type = string
    default = "AKIA5LVCQDY462B6NQSK"  
}

variable "AWS_SECRET_KEY" {}

variable "AWS_REGION" {
    default = "ap-south-1"
}

variable "Security_Group" {
    type = list
    default = ["sg-24076", "sg-90890", "sg-456789"]
}

variable "AMIS" {
    type = map
    default = {
        ap-south-1     = "ami-0828d0df4179c553a"
        ap-southeast-1 = "ami-0d4c598ab18f1ed1b"
        ap-southeast-2 = "ami-02ce965e844c396fc"
        ap-southeast-3 = "ami-0a512b415be2c0853"
    }
  
}

variable "PATH_TO_PRIVATE_KEY" {
    default = "levelup_key"
}

variable "PATH_TO_PUBLIC_KEY" {
    default = "levelup_key.pub"
}

variable "INSTANCE_USERNAME" {
    default = "ubuntu" 
}