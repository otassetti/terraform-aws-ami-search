AWS AMI SEARCH Terraform module
=================================

Terraform module to find the last version of an AWS Ami IDs for working region, using common os name.

Usage
--------

Set the 'os' var from the below list:

``` bash
# Linux
ubuntu -> ubuntu-22.04
ubuntu-18.04
ubuntu-20.04
ubuntu-22.04
centos -> centos-7
centos-7
centos-9
rhel -> rhel-8
rhel-7
rhel-8
rhel-9
alma -> alma-9
alma-8
alma-9
debian -> debian-11
debian-10
debian-11
fedora-37
amazon-2_lts
amazon-2023
suse-les -> suse-les-12
suse-les-12


# Windows
windows -> windows-2022-base
windows-2022-base
windows-2019-base
windows-2016-base
```

Examples
--------

```hcl
module "ami-search" {
  source  = "otassetti/ami-search/aws"
  os = "centos-7"
}

resource "aws_instance" "web" {
  ami = "${module.ami-search.ami_id}"
  instance_type = "t2.micro"

  tags {
    Name = "HelloWorld"
  }
}


```

Limitations
-----------

* Hvm type only (Hardcoded in the filter module)

Authors
-------

Module managed by [Olivier Tassetti].

License
-------

Apache 2 Licensed. See LICENSE for full details.
