variable "cluter_master_password" {
    description = "The password to login to the cluster"
}

variable "cluter_master_username" {
    description = "The user to login to the cluster"
}

variable "project_id" {
    description = "Google Cloud Project ID to be used"
}

variable "region" {
    default     = "us-east4"
    description = "Google Cloud Region to be used"
}

variable "zone" {
    default     = "us-east4-a"
    description = "Google Cloud Zone to be used"
}