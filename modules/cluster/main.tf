variable "cluster_size" {
  type = number
}

variable "subnet_id" {
  type = string
}

resource "local_file" "this" {
  count = var.cluster_size

  filename = "${path.root}/server-${count.index+1}.txt"
  content = <<-EOF
    ========
    server ${count.index+1}
    ========
    subnet_id ${var.subnet_id}
    module version 3

EOF
}
