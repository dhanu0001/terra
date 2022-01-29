variable "AWS_ACCESS_KEY" {
    type = string
    default = "AKIAY3PJYSEYY7GKQIFF"  
}

variable "AWS_SECRET_KEY" {}

variable "AWS_REGION" {
    default = "us-east-2"
}

variable "Security_Group" {
    type = list
    default = ["sg-24076", "sg-90890", "sg-456789"]
}

variable "AMIS" {
    type = map
    default = {
        us-east-1     = "ami-002abb46ec8275406"
        us-east-2     = "ami-0154b93e8f7147f76"
        us-west-1	  = "ami-09be156a14463eece"
        us-west-2     = "ami-08bd106d5eed23706"
    }
}