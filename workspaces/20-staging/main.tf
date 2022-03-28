module "network" {
  source     = "github.com/backbeat-tech/terraform-monorepo-demo//modules/network?ref=v3"
  cidr_block = "10.0.2.0/16"
}

module "cluster" {
  source     = "github.com/backbeat-tech/terraform-monorepo-demo//modules/cluster?ref=v2"
  cluster_size = 2
  subnet_id    = module.network.subnet_id
}
