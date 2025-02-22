output "web_server_public_ip" {
  description = "The public ip of the web server"
  value = module.ec2.public_ip
}