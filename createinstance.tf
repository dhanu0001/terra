provider "aws" {
    access_key = "ACCESS_KEY_HERE"
    secret_key = "SECRET_KEY_HERE"
    region     = "ap-south-1" 
}

resource "aws_instance" "myfirstinstance" {
    count = 3
    ami = "ami-0f2e255ec956ade7f"
    instance_type = "t2.micro"

    tags = {
        Name = "demoinstances"
    }
}