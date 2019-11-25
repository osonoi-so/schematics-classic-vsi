resource "ibm_compute_vm_instance" "khayama01" {
    name = "khayama01"
    domain = "ibmcloud.com"
    ssh_keys = ["xxxxx"]
    image = "CENTOS_7_64"
    region = "tok02"
    public_network_speed = 100
    cpu = 1
    ram = 1024
    hourly_billing = true
    private_network_only = false
    disks = [25]
    local_disk = true
}
