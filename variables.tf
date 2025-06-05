variable "os" {
  description = "The Os reference to search for"
}

variable "amis_primary_owners" {
  description = "Force the ami Owner, could be (self) or specific (id)"
  default     = ""
}

variable "amis_os_map_regex" {
  description = "Map of regex to search amis"
  type        = map(string)

  default = {
    ubuntu              = "^ubuntu/images/hvm-ssd/ubuntu-jammy-22.04-amd64-server-.*"
    "ubuntu-18.04"      = "^ubuntu/images/hvm-ssd/ubuntu-bionic-18.04-amd64-server-.*"
    "ubuntu-20.04"      = "^ubuntu/images/hvm-ssd/ubuntu-focal-20.04-amd64-server-.*"
    "ubuntu-22.04"      = "^ubuntu/images/hvm-ssd/ubuntu-jammy-22.04-amd64-server-.*"
    centos              = "^CentOS.Linux.7.*x86_64.*"
    "centos-7"          = "^CentOS.Linux.7.*x86_64.*"
    "centos-9"          = "^CentOS Stream 9.*x86_64.*"
    rhel                = "^RHEL-8.*x86_64.*"
    "rhel-7"            = "^RHEL-7.*x86_64.*"
    "rhel-8"            = "^RHEL-8.*x86_64.*"
    "rhel-9"            = "^RHEL-9.*x86_64.*"
    debian              = "^debian-11-.*"
    "debian-10"         = "^debian-10-.*"
    "debian-11"         = "^debian-11-.*"
    "fedora-37"         = "^Fedora-Cloud-Base-37-.*-gp2.*"
    amazon              = "^amzn-ami-hvm-.*x86_64-gp2"
    amazon-2_lts        = "^amzn2-ami-hvm-.*x86_64-gp2"
    suse-les            = "^suse-sles-12-sp\\d-v\\d{8}-hvm-ssd-x86_64"
    "suse-les-12"       = "^suse-sles-12-sp\\d-v\\d{8}-hvm-ssd-x86_64"
    windows             = "^Windows_Server-2022-English-Full-Base-.*"
    "windows-2022-base" = "^Windows_Server-2022-English-Full-Base-.*"
    "windows-2019-base" = "^Windows_Server-2019-English-Full-Base-.*"
    "windows-2016-base" = "^Windows_Server-2016-English-Full-Base-.*"
  }
}

variable "amis_os_map_owners" {
  description = "Map of amis owner to filter only official amis"
  type        = map(string)
  default = {
    ubuntu              = "099720109477" #CANONICAL
    "ubuntu-18.04"      = "099720109477" #CANONICAL
    "ubuntu-20.04"      = "099720109477" #CANONICAL
    "ubuntu-22.04"      = "099720109477" #CANONICAL
    rhel                = "309956199498" #Amazon Web Services
    "rhel-7"            = "309956199498" #Amazon Web Services
    "rhel-8"            = "309956199498" #Amazon Web Services
    "rhel-9"            = "309956199498" #Amazon Web Services
    centos              = "679593333241"
    "centos-7"          = "679593333241"
    "centos-9"          = "679593333241"
    debian              = "136693071363"
    "debian-10"         = "136693071363"
    "debian-11"         = "136693071363"
    "fedora-37"         = "125523088429" #Fedora
    amazon              = "137112412989" #amazon
    amazon-2_lts        = "137112412989" #amazon
    suse-les            = "013907871322" #amazon
    "suse-les-12"       = "013907871322" #amazon
    windows             = "801119661308" #amazon
    "windows-2022-base" = "801119661308" #amazon
    "windows-2019-base" = "801119661308" #amazon
    "windows-2016-base" = "801119661308" #amazon
  }
}
