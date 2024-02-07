output "id" {
  description = "The ID of the launch template"
  value       = try(aws_launch_template.this[0].id, "")
}
