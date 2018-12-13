output "InstancePublicIPs" {
  value = ["${oci_core_instance.ArangoDB.*.public_ip}"]
}