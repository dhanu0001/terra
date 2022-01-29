
resource "aws_instance" "Myfirstinstance" {  # aws_instance=" creating instance"
    ami = lookup(var.AMIS, var.AWS_REGION)    # lookup = using map variable to secure ami and region
    instance_type = "t2.micro"

    tags = {
      Name = "Custom-instance"
    }
}