resource "aws_transfer_server" "transfer_server" {
  identity_provider_type = "SERVICE_MANAGED"
  logging_role           = aws_iam_role.transfer_server_role.arn

  tags {
    NAME = var.transfer_server_name
  }
}

resource "aws_transfer_user" "transfer_server_user" {
  server_id      = aws_transfer_server.transfer_server.id
  user_name      = var.transfer_server_user_name
  role           = aws_iam_role.transfer_server_role.arn
  home_directory = "/${var.bucket_name}"
}

resource "aws_transfer_ssh_key" "transfer_server_ssh_key" {
  server_id = aws_transfer_server.transfer_server.id
  user_name = aws_transfer_user.transfer_server_user.user_name
  body      = var.transfer_server_ssh_key
}