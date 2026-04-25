resource "proxmox_virtual_environment_vm" "my_vm" {
   name = "ansible-4"
   node_name = "proxmox"
   vm_id = "102"


   clone {
     vm_id = 109
     full = true

}


cpu {
  cores = 1

}

memory {
  dedicated = 1024
}

initialization {

  user_account {

    username = "ansible"
    keys = [file("~/.ssh/ansible.pub")]
}
}
}


