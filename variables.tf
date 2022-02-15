variable "bucket_name" {
  type        = string
  description = "Bucket name"
}

variable "bucket_acl" {
  type        = string
  description = "Bucket acl config"
}

variable "tags" {
  type        = map(string)
  description = "Map de tags para bucket"
}