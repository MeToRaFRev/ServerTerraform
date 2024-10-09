output "instance_ip" {
  value = aws_instance.Coolify.public_ip
}
output "instance_id" {
  value = aws_instance.Coolify.id
}
output "instance_az" {
  value = aws_instance.Coolify.availability_zone
}
