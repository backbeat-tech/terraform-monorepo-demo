variable "cidr_block" {
  type = string
}

resource "local_file" "this" {
  filename = "${path.root}/network.txt"
  content = <<-EOF
    =======
    network
    =======
    cidr_block ${var.cidr_block}
    module version 3

EOF
}

output "subnet_id" {
  value = "v3_subnet_id"
}
