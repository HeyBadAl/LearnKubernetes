output "public_ip" {
  value = aws_instance.kubernetes_instance.public_ip
}

