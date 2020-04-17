# terraform-aws-transfer-server

Terraform module to create a aws transfer server (SFTP)

## Usage

```hcl
resource "aws_s3_bucket" "bucket" {
  bucket = "bucket_name"
  acl    = "private"
}

module "sftp" {
  source = "git::https://github.com:felipefrizzo/terraform-aws-transfer-server.git?ref=master"

  transfer_server_name      = "sftp-server-name"
  transfer_server_user_name = "sftp-user-name"
  transfer_server_ssh_key   = "ssh-rsa AAAA..."
  bucket_name               = aws_s3_bucket.bucket.id
  bucket_arn                = aws_s3_bucket.bucket.arn
}
```

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|:----:|:-------:|:--------:|
| bucket_name | S3 bucket name | string | `` | yes |
| bucket_arn | S3 bucket arn | string | `` | yes |
| transfer_server_name | Transfer Server name | string | `` | yes |
| transfer_server_user_name | Username for SFTP server | string | `` | yes |
| transfer_server_ssh_key | SSH Key for transfer server user | string | `` | yes |
