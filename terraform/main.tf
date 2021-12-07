resource "vsphere_virtual_machine" "vm" {
  name             = var.vm_name
  resource_pool_id = data.vsphere_compute_cluster.cluster.resource_pool_id
  datastore_id     = data.vsphere_datastore.datastore.id


  num_cpus               = 6
  cpu_hot_add_enabled    = true
  memory                 = 8192
  memory_hot_add_enabled = true
  folder                 = var.folder
  guest_id               = "centos64Guest"
  annotation             = "TEST"

  network_interface {
    network_id = data.vsphere_network.network.id
  }

  disk {
    label            = "disk0"
    size             = 60
    thin_provisioned = data.vsphere_virtual_machine.template.disks.0.thin_provisioned
  }
  disk {
    datastore_id = data.vsphere_datastore.datastore.id
    label        = "disk1"
    size         = 50
    unit_number  = 1
  }
  scsi_type = data.vsphere_virtual_machine.template.scsi_type


  wait_for_guest_net_timeout = 0
  wait_for_guest_ip_timeout  = 0
  clone {
    template_uuid = data.vsphere_virtual_machine.template.id
    customize {
      linux_options {
        host_name = var.host_name
        domain    = var.domain
      }
      network_interface {
        ipv4_address = var.ip
        ipv4_netmask = "24"
      }
      ipv4_gateway    = var.gateway
      dns_suffix_list = ["DNS_SUFFIX"]
      dns_server_list = var.dns_list
    }
  }
}
