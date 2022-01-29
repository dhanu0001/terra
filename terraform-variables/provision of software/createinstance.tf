resource "aws_key_pair" "levelup_key" {     # aws_key_pair="for ssh connection"
    key_name = "levelup_key"
    public_key = file(var.PATH_TO_PUBLIC_KEY)   # public_key="define path of public key" in varible.tf
}

resource "aws_instance" "Myfirstinstance" {   # aws_instance=" creating instance"
    ami = lookup(var.AMIS, var.AWS_REGION)    # lookup = using map variable to secure ami and region
    instance_type = "t2.micro"
    key_name = aws_key_pair.levelup_key.key_name

    tags = {
      Name = "Custom-instance"
    }

    provisioner "file" {
        source = "installnginx.sh"
        destination = "/tmp/installnginx.sh"
    }

    provisioner "remote-exec" {
       inline = [
           "chmod +x /tmp/installnginx.sh",
           "sudo sed -i -e 's/\r$//' /tmp/installnginx.sh", # remove CR char(mostly when use notepad++)
           "sudo /tmp/installnginx.sh",
       ]    
    }

    connection {
        host          = coalesce(self.public_ip, self.private_ip) #coalesce function = " it is accept public ip and private ip"
        type          = "ssh"
        user          = var.INSTANCE_USERNAME
        private_key   = file(var.PATH_TO_PRIVATE_KEY)
    }  
}
