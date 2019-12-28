# terraform-aws-transfer-server

Terraform module to create a aws transfer server (SFTP)

## Usage

```hcl
module "sftp" {
  source = "git::https://github.com:felipefrizzo/terraform-aws-transfer-server.git?ref=master"

  transfer_server_name      = "sftp-server-name"
  transfer_server_user_name = "sftp-user-name"
  transfer_server_ssh_key   = "ssh-rsa AAAA..."
  bucket_name               = "sftp-bucket-name"
}
```

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|:----:|:-------:|:--------:|
| bucket_name | S3 bucket name | string | `` | yes |
| force_destroy | Delete all objects in bucket on destroy | boolean | false | no |
| public_bucket | Allow public read access to bucket | boolean | false | no |
| versioned | Version the bucket | boolean | false | no |
| transfer_server_name | Transfer Server name | string | `` | yes |
| transfer_server_user_name | Username for SFTP server | string | `` | yes |
| transfer_server_ssh_key | SSH Key for transfer server user | string | `` | yes |
