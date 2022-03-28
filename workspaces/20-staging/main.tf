module "network" {
  source     = "../../modules/network"
  cidr_block = "10.0.2.0/16"
}

module "cluster" {
  source       = "../../modules/cluster"
  cluster_size = 2
  subnet_id    = module.network.subnet_id
}
