output "policy" {
  value = data.template_file.s3_policy.rendered

}