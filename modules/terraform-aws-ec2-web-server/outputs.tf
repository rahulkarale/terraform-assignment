output "ssh-key" {
  value = aws_key_pair.generated_key.key_name
  sensitive = true
}

output "target_group_arn" {
  value = aws_lb_target_group.web.arn
}
