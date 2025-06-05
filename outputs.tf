output "ami_id" {
  description = "The AMI id result of the search"
  value       = data.aws_ami.search.id
}

output "root_device_name" {
  description = "The device name of the root dev"
  value       = data.aws_ami.search.root_device_name
}

output "owner_id" {
  description = "The owner id of the selected ami"
  value       = data.aws_ami.search.owner_id
}
