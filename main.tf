module "s3-bucket" {
  source        = "git::https://github.com/felipefrizzo/terraform-aws-s3-bucket.git?ref=master"
  bucket_name   = "${var.bucket_name}"
  force_destroy = "${var.force_destroy}"
  public        = "${var.public_bucket}"
  versioned     = "${var.versioned}"
}

resource "aws_transfer_server" "transfer_server" {
  identity_provider_type = "SERVICE_MANAGED"
  logging_role           = "${aws_iam_role.transfer_server_role.arn}"

  tags {
    NAME = "${var.transfer_server_name}"
  }
}

resource "aws_transfer_user" "transfer_server_user" {
  server_id      = "${aws_transfer_server.transfer_server.id}"
  user_name      = "${var.transfer_server_user_name}"
  role           = "${aws_iam_role.transfer_server_role.arn}"
  home_directory = "/${module.s3-bucket.s3_bucket_id}"
}

resource "aws_transfer_ssh_key" "transfer_server_ssh_key" {
  server_id = "${aws_transfer_server.transfer_server.id}"
  user_name = "${aws_transfer_user.transfer_server_user.user_name}"
  body      = "${var.transfer_server_ssh_key}"
}