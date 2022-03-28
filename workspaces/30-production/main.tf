module "network" {
  source     = "github.com/backbeat-tech/terraform-monorepo-demo//modules/network?ref=v2"
  cidr_block = "10.0.1.0/16"
}

module "cluster" {
  source     = "github.com/backbeat-tech/terraform-monorepo-demo//modules/cluster?ref=v1"
  cluster_size = 3
  subnet_id    = module.network.subnet_id
}
