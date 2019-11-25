variable "softlayer_username" {}
variable "softlayer_api_key" {}

provider "ibm" {
  region = "<region_name>"
  softlayer_username = "${var.softlayer_username}"
  softlayer_api_key  = "${var.softlayer_api_key}"
}
