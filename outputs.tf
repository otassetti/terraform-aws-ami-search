output "ami_ids" {
  description = "The AMI ids result of the search"
  value = "${zipmap(var.os, data.aws_ami.search.*.id)}"
}
