variable "region" {
    type = string
    description = "Aws region"
  
}
variable "bucket" {
    default = ""
    description = "The name of the bucket "
  
}
variable "acl" {
    default= ""
  description = "The canned ACL to apply"
}

variable  "versioning"  {
    type = map(string)
    

  }  
variable "force_destroy" {
    type = bool 
  
}
variable "grant" {
  description = "An ACL policy grant. Conflicts with `acl`"
  type        = any
  default     = []
}
variable "object_lock_configuration" {
    type = any 
    description = "Map containing S3 object locking configuration."
  
}
variable "object_lock_enabled" {
  type = bool
  description = "Map containing S3 object locking configuration."
}

 variable "restrict_public_buckets" {
  description = "Whether Amazon S3 should restrict public bucket policies for this bucket."
  #type        = bool
  default     = " "
}
#################
variable "block_public_acls" {
  description = "Whether Amazon S3 should block public ACLs for this bucket."
  #type        = bool
  default     = false
}

variable "block_public_policy" {
  description = "Whether Amazon S3 should block public bucket policies for this bucket."
  #type        = bool
  default     = false
}

variable "ignore_public_acls" {
  description = "Whether Amazon S3 should ignore public ACLs for this bucket."
  #type        = bool
  default     = false
}


  variable "tags" {
  description = "(Optional) A mapping of tags to assign to the bucket."
  type        = map(string)
  
}

