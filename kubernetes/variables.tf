variable "password" {
    description = "Password to login to the cluster"
}

variable "project_id" {
    description = "Google Cloud Project ID to be used"
}

variable "region" {
    default     = "us-east4"
    description = "Google Cloud Region to be used"
}

variable "username" {
    description = "The user to login to the cluster"
}

variable "zone" {
    default     = "us-central4-a"
    description = "Google Cloud Zone to be used"
}