variable "datacenter" {
  type        = "string"
  default = "tok04"
}

variable "os_reference_code" {
  type        = "string"
  default = "CENTOS_7_64"
}

variable "flavor_key_name" {
  type        = "string"
  default = "B1_1X2X25"
}

resource "ibm_compute_vm_instance" "khayama-test" {
    hostname = "khayama-test"
    domain = "ibmcloud.com"
    os_reference_code = "${var.os_reference_code}"
    datacenter = "${var.datacenter}"
    network_speed = 100
    hourly_billing = true
    transient = true
    local_disk = false
    private_network_only = false
    flavor_key_name = "${var.flavor_key_name}"
    public_security_group_ids = [1287613]
    tags = ["user:khayama"]
    notes = "khayama's Resource created by Schematics"
}
