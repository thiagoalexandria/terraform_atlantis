allocated_storage           = 20
rds_identifier              = "prdpostgres"
rds_storage_type            = "gp2"
rds_engine                  = "postgres"
rds_engine_version          = "12.3"
rds_instance_class          = "db.m3.medium"
rds_name                    = "prdpostgres"
rds_username                = "postgres"
rds_password                = "rfv1ebf_pax6pha5VZF"
rds_backup_retention_period = "7"
rds_backup_window           = "01:00-03:00"
subnet_group_name           = "postgres-group"
monitoring_interval         = 60
rds_snapshot_identifier     = "prd-postgres"
rds_skip_final_snapshot     = false
monitoring_role             = "arn:aws:iam::782002899441:role/rds-monitoring"
rds_tags = {
  Name         = "rds-instance"
  Departamento = "Devops"
  Terraform    = "True"
}
