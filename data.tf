data "databricks_current_user" "me" {
  provider   = databricks.mws
  depends_on = [ databricks_mws_workspaces.this ]
}

data "aws_availability_zones" "available" {}

data "aws_vpc" "my_vpc" {
  id = var.vpc_id
}

data "aws_subnet" "dbx_subnet_a" {
  id = var.subnet_a_id
}

data "aws_subnet" "dbx_subnet_b" {
  id = var.subnet_b_id
}

data "aws_subnet" "dbx_subnet_endpoints" {
  id = var.subnet_endpoint_id
}

data "aws_route_table" "dbx_rt" {
  route_table_id = var.route_table_id
}