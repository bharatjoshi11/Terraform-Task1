resource "aws_instance" "ec1" {
  ami = var.ami
  instance_type = var.type
  key_name =  "bharat"
  subnet_id = var.subnet
  vpc_security_group_ids = [aws_security_group.Bharat-joshisg.id]
  
  
  
  
  

 tags = {
   "Name" = "Bharat-ins-1"
   "Owner" = "bharat.joshi@cloudeq.com"
   "Purpose" = "TASK"

 }
 volume_tags = {
   "Name" = "Bharat-ins-1"
   "Owner" = "bharat.joshi@cloudeq.com"
   "Purpose" = "TASK"
 }
}
           




resource "aws_security_group" "Bharat-joshisg" {
  name        = var.name
  description = "Creating security group for training purpose"
  vpc_id      = var.vpc_id

  ingress {
    description      = "SSH"
    from_port        = 22
    to_port          = 22
    protocol         = "tcp"
    cidr_blocks      = ["172.31.0.0/16"]
   
  }

 
  

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]

  }

  tags = {
    Name = var.Name
    Owner = var.Owner
    Purpose = var.Purpose
  }
}

