output "name" {
  value = aws_lightsail_instance.lightsail_1.name
 
}

output "private_ip" {
  value = aws_lightsail_instance.lightsail_1.private_ip_address

}

output "public_ip" {
  value = aws_lightsail_instance.lightsail_1.public_ip_address

}