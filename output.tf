output "bucket_name" {
  value = "${module.s3-bucket.s3_bucket_id}"
}

output "transfer_server_id" {
  value = "${aws_transfer_server.transfer_server.id}"
}

output "transfer_server_endpoint" {
  value = "${aws_transfer_server.transfer_server.endpoint}"
}