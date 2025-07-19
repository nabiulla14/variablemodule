module "ec2_instance" {
  source        = "./terraform19"
  region        = "us-east-1"
  ami           = "ami-0150ccaf51ab55a51"  # Replace with a valid AMI ID
  instance_type = "t2.medium"
  instance_name = "MyEC2Instance"
}

output "instance_id" {
  value = module.ec2_instance.instance_id
}

output "instance_public_ip" {
  value = module.ec2_instance.instance_public_ip
}
