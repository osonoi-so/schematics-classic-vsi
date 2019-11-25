#リソースの設定
# Virtual Server created with existing SSH Key already in SoftLayer
resource "softlayer_virtual_guest" "khayama01" {
    name = "khayama01"
    domain = "softlayer.com"
    ssh_keys = ["776719"]
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
