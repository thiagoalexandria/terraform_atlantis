provider "aws" {
  region = "us-east-1"
}

terraform {
  backend "s3" {
    bucket  = "terraform-tfstate-atlantis-demo"
    key     = "atlantis/demo.tfstate"
    region  = "us-east-1"
    encrypt = true
  }
}

module "rds-prd" {
  source = "./modules/rds-instance"

  allocated_storage           = var.allocated_storage
  rds_identifier              = var.rds_identifier
  rds_storage_type            = var.rds_storage_type
  rds_engine                  = var.rds_engine
  rds_engine_version          = var.rds_engine_version
  rds_instance_class          = var.rds_instance_class
  rds_name                    = var.rds_name
  rds_username                = var.rds_username
  rds_password                = var.rds_password
  rds_backup_retention_period = var.rds_backup_retention_period
  rds_backup_window           = var.rds_backup_window
  monitoring_interval         = var.monitoring_interval
  rds_snapshot_identifier     = var.rds_snapshot_identifier
  rds_skip_final_snapshot     = var.rds_skip_final_snapshot
  monitoring_role             = var.monitoring_role


  subnet_group_name = var.subnet_group_name
  subnet_ids   = tolist([data.aws_subnet.priv1.id, data.aws_subnet.priv2.id])
  vpc_id       = data.aws_vpc.app.id
  sg_cidr_list = tolist([data.aws_subnet.priv1.cidr_block, data.aws_subnet.priv2.cidr_block])
}
