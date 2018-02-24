variable region {
 default = "us-west-2"
}

variable modname {
 default = "balancer1"
}
variable SubnetId {
 default = "subnet-4b113d3d"
 description = "The subnet id of a default vpc in the working region"
}
variable SecGroupId {
default = "default"
description = "this variable doesn't have a default value but it is passed from the main code"
}
