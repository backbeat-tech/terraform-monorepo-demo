module "network" {
  source     = "github.com/backbeat-tech/terraform-monorepo-demo//modules/network?ref=v3"
  cidr_block = "10.0.3.0/16"
}

module "cluster" {
  source     = "github.com/backbeat-tech/terraform-monorepo-demo//modules/cluster?ref=v3"
  cluster_size = 1
  subnet_id    = module.network.subnet_id
}
