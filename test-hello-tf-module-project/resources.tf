provider "aws" {
shared_credentials_file  = "/Users/castillorm/.aws/credentials"
 region     = "${var.region}"
 profile    = "default"
}

resource "aws_security_group" "ForBalancer" {
name        = "For_Balancer"
 description = "A security group that will apply to the balancer"
 vpc_id      = "${var.myvpcid}"


# Allow HTTP from anywhere
 ingress {
from_port   = 80
   to_port     = 80
   protocol    = "tcp"
   cidr_blocks = ["0.0.0.0/0"]
 }
}
module "balancer1" {
source = "../hello-tf-module"
 modname   = "Balancer1"
 SecGroupId = "${aws_security_group.ForBalancer.id}"
}
