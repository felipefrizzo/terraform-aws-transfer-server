output "bucket_name" {
  value = var.bucket_name
}

output "transfer_server_id" {
  value = aws_transfer_server.transfer_server.id
}

output "transfer_server_endpoint" {
  value = aws_transfer_server.transfer_server.endpoint
}