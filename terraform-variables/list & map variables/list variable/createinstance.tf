resource "aws_instance" "myfirstinstance" {
    count = 3
    ami = "ami-0f2e255ec956ade7f"
    instance_type = "t2.micro"

    tags = {
        Name = "demoinstance-${count.index}"
    }

    security_groups = var.Security_Group
}