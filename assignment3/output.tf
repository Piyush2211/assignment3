output "eq-s3-resources" {
  value = values(aws_s3_bucket.terraform-state-bucket)[*].arn
}
output "eq-ec2-resources" {
  value = [for resource in aws_instance.ec2-instance : "${resource.id}"]

}