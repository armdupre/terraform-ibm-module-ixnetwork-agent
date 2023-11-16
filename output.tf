output "Eth0FloatingIp" {
	description = "Floating Ip resource associated with the first network interface."
	value = {
		"address" : "https://${ibm_is_floating_ip.Eth0FloatingIp.address}"
	}
}

output "Image" {
	description = "Custom image resource associated with the virtual server instance."
	value = {
		"name" : data.ibm_is_image.Image.name
	}
}

output "Instance" {
	description = "Instance resource associated with the virtual server instance."
	value = {
		"eth0_address" : ibm_is_instance.Instance.primary_network_interface[0].primary_ip[0].address
	}
}