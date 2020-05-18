terraform {
  required_version = "> 0.8.0"
}

variable "private_ssh_key"{
  description = "private ssh key"
}

variable "ssh_user"{
  description = "user who can login"
}

variable "host_ip"{
  description = "IP address of the instance"
}

resource "null_resource" "delay" {

 
 provisioner "remote-exec" {
    inline = [
    ]

    connection {
      user          = "${var.ssh_user}"
      private_key   = "${var.private_ssh_key}"
      host     = "${var.host_ip}"
    }
    script = "scripts/wait_for_instance.sh"
  }

 provisioner "local-exec" {
 
  }
}
