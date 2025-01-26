resource "aws_lightsail_instance" "lightsail_ub" {
  name              = "lightsail_ubuntu"
  availability_zone = "us-east-1b"
  blueprint_id      = "ubuntu_18_04"
  bundle_id         = "nano_3_0"
  user_data         = file("script.sh")

  tags = {
    name = "ls_instance"
  }
}


