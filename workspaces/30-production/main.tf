module "network" {
  source     = "../../modules/network"
  cidr_block = "10.0.1.0/16"
}

module "cluster" {
  source       = "../../modules/cluster"
  cluster_size = 3
  subnet_id    = module.network.subnet_id
}
