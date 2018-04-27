# get amis data from aws
data "aws_ami" "search" {
  most_recent = true

 filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }

  name_regex = "${lookup("${var.amis_os_map_regex}", "${var.os}")}"
  owners = ["${distinct(concat(compact(var.amis_primary_owners), list(lookup(var.amis_os_map_owners, var.os))))}"]
}


