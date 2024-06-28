
locals {
 instance_type  = {
    default          = "t2.nano"
    dev              = "t2.micro"
    prod             = "t2.small"
 }

}

resource "aws_instance" "myec2" {
 ami            = "ami-01b799c439fd5516a"
 instance_type  = "t2.micro"
 tags = {
   "ENV" = "dev"
 }
}