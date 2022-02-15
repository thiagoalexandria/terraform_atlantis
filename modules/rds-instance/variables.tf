variable "allocated_storage" {
    type = number
    description = "(optional) describe your variable"
}

variable "rds_identifier" {
    type = string
    description = "(optional) describe your variable"
    default = ""
}

variable "rds_storage_type" {
    type = string
    description = "(optional) describe your variable"
    default = "gp2"
}

variable "rds_engine" {
    type = string
    description = "(optional) describe your variable"
    default = ""
}

variable "rds_engine_version" {
    type = string
    description = "(optional) describe your variable"
    default = ""
}

variable "rds_instance_class" {
    type = string
    description = "(optional) describe your variable"
    default = ""
}

variable "rds_name" {
    type = string
    description = "(optional) describe your variable"
    default = ""
}

variable "rds_username" {
    type = string
    description = "(optional) describe your variable"
    default = ""
}

variable "rds_password" {
    type = string
    description = "(optional) describe your variable"
    default = ""
}

variable "rds_backup_retention_period" {
    type = number
    description = "(optional) describe your variable"
}

variable "rds_backup_window" {
    type = string
    description = "(optional) describe your variable"
    default = ""
}

variable "subnet_group_name" {
    type = string
    description = "(optional) describe your variable"
    default = ""
}

variable "monitoring_interval" {
    type = number
    description = "(optional) describe your variable"
}

variable "rds_snapshot_identifier" {
    type = string
    description = "(optional) describe your variable"
    default = ""
}

variable "rds_skip_final_snapshot" {
    type = bool
    description = "(optional) describe your variable"
    default = "false"
}

variable "monitoring_role" {
    type = string
    description = "(optional) describe your variable"
    default = ""
}

variable "rds_tags" {
    type = map(string)
    description = "(optional) describe your variable"
    default = {}
}

variable "subnet_ids" {
    type = list(any)
    description = "(optional) describe your variable"
    default = [""]
}

variable "vpc_id" {
    type = string
    description = "(optional) describe your variable"
    default = ""
}

variable "sg_cidr_list" {
    type = list(any)
    description = "(optional) describe your variable"
    default = [""]
}