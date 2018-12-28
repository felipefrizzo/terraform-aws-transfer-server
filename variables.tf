variable "bucket_name" {
  description = "The S3 bucket name"
}

variable "force_destroy" {
  description = "Delete all objects in bucket on destroy"
  type = "boolean"
  default = false
}

variable "public_bucket" {
  description = "Allow public read access to bucket"
  type = "boolean"
  default = false
}

variable "versioned" {
  description = "Version the bucket"
  type = "boolean"
  default = false
}

variable "transfer_server_name" {
  description = "Transfer Server name"
}

variable "transfer_server_user_name" {
  description = "User name for SFTP server"
}

variable "transfer_server_ssh_key" {
  description = "SSH Key for transfer server user"
}
