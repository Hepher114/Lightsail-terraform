# Create a new Lightsail instance
resource "aws_lightsail_instance" "lightsail_1" {
  name              = "Lightsail-2"        
  availability_zone = "us-east-1a"         
  blueprint_id      = "amazon_linux_2"    
  bundle_id         = "micro_1_0"         
  user_data         = file("data.sh")      
  tags = {
    Name = "Lightsail_amazon" 
  }
}

