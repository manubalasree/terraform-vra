resource "local_file" "AnsibleInventory" {
  content = templatefile("ansible_inventory.tmpl",
  {
   ansible_hosts     = element([for props in vra_deployment.linux-cloud-template.resources.*.properties_json : jsondecode(props).address], 0),
   is_vm  = true
  }
  )
  filename = "inventory.config"
}

output "ipvalue"  {
  value = element([for props in vra_deployment.linux-cloud-template.resources.*.properties_json : jsondecode(props).address], 0)
}