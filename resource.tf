resource "ibm_compute_vm_instance" "khayama-test" {
    hostname = "khayama-test"
    domain = "ibmcloud.com"
    os_reference_code = "CENTOS_7_64"
    datacenter = "tok02"
    network_speed = 100
    hourly_billing = true
    transient = true
    local_disk = false
    private_network_only = false
    flavor_key_name = "B1_2X4X25"
    tags = ["user:khayama"]
    notes = "khayama-test"
}
