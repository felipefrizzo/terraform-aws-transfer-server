variable "bucket_name" {
  description = "The S3 bucket name"
  type        = string
}

variable "transfer_server_name" {
  description = "Transfer Server name"
  type        = string
}

variable "transfer_server_user_name" {
  description = "User name for SFTP server"
  type        = string
}

variable "transfer_server_ssh_key" {
  description = "SSH Key for transfer server user"
  type        = string
}
