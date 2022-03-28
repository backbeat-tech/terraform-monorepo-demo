module "network" {
  source     = "../../modules/network"
  cidr_block = "10.0.3.0/16"
}

module "cluster" {
  source       = "../../modules/cluster"
  cluster_size = 1
  subnet_id    = module.network.subnet_id
}
