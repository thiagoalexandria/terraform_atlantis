resource "aws_db_instance" "default" {
  allocated_storage         = var.allocated_storage
  identifier                = var.rds_identifier
  storage_type              = var.rds_storage_type
  engine                    = var.rds_engine
  engine_version            = var.rds_engine_version
  instance_class            = var.rds_instance_class
  name                      = var.rds_name
  username                  = var.rds_username
  password                  = var.rds_password
  backup_retention_period   = var.rds_backup_retention_period
  backup_window             = var.rds_backup_window
  db_subnet_group_name      = var.subnet_group_name
  monitoring_interval       = var.monitoring_interval
  final_snapshot_identifier = var.rds_snapshot_identifier
  skip_final_snapshot       = var.rds_skip_final_snapshot
  monitoring_role_arn       = var.monitoring_role
  vpc_security_group_ids    = [aws_security_group.acesso_postgres.id]
  tags_all = var.rds_tags
}

resource "aws_db_subnet_group" "private-subnet" {
  name       = var.subnet_group_name
  subnet_ids = var.subnet_ids

  tags = {
    Name = "${var.subnet_group_name}"
    Terraform = "True"
  }
}

resource "aws_security_group" "acesso_postgres" {

  name   = "${var.rds_name}-sg"
  vpc_id = var.vpc_id

  egress {
    from_port = 0
    to_port   = 0

    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "${var.rds_name}-sg"
    Terraform = "True"
  }
}

resource "aws_security_group_rule" "postgres" {
  from_port                = 5432
  to_port                  = 5432
  protocol                 = "tcp"
  description              = "Allow postgres port"
  security_group_id        = aws_security_group.acesso_postgres.id
  cidr_blocks              = var.sg_cidr_list
  type                     = "ingress"
}

