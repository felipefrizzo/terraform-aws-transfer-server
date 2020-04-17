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

  transfer_server_name       = "sftp-server-name"
  transfer_server_user_names = ["sftp-user-name-01", "sftp-user-name-02"]
  transfer_server_ssh_keys   = ["ssh-rsa AAAA...", "ssh-rsa AAAA..."]
  bucket_name                = aws_s3_bucket.bucket.id
  bucket_arn                 = aws_s3_bucket.bucket.arn
}
```

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|:----:|:-------:|:--------:|
| bucket_name | S3 bucket name | string | `` | yes |
| bucket_arn | S3 bucket arn | string | `` | yes |
| transfer_server_name | Transfer Server name | string | `` | yes |
| transfer_server_user_names | Username(s) for SFTP server | list(string) | `` | yes |
| transfer_server_ssh_keys | SSH Key(s) for transfer server user(s) | list(string) | `` | yes |
