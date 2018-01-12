output "ami_id" {
  value = "${data.aws_ami.search.id}"
}

output "root_device_name" {
  value = "${data.aws_ami.search.root_device_name}"
}
