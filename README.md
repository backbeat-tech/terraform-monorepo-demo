# Terraform monorepo demo

Shows how terraform modules and workspaces can live in the same repository, while also having each workspace depend on different versions of those modules.

## Workspace versions

* 10-development - network v3, cluster v3
* 20-staging - network v2, cluster v2
* 30-production - network v2, cluster v1

## Usage

* `./init.sh` - run whenever you change the versions used by a workspace
* `./apply.sh` - apply everything
* `./show.sh` - view the created resources (just dummy files).

## Caveats

Terraform will clone the whole repository for each module, e.g. `10-development/.terraform/modules/network` and `10-development/.terraform/modules/cluster` will both contain the whole repository.

This could be an issue for large projects.
