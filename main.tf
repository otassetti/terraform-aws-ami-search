# get amis data from aws
data "aws_ami" "search" {
  count = "${length(var.os)}"
  most_recent = true

 filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }

  name_regex = "${lookup("${var.amis_os_map_regex}", "${var.os[count.index]}")}"

  owners= ["${length(var.amis_primary_owners) == 0 ? lookup(var.amis_os_map_owners, var.os[count.index]):var.amis_primary_owners}"]
}
