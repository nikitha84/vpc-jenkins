variable "vpc_cidr" {
    default = "10.0.0.0/16"
    type = string
}

variable "enable_dns_hostnames" {
    default = true
    type = bool
}


# variable "common_tags" {
#     type = map
#     default = {}
    
# }

# variable "vpc_tags" {
#     type = map
#     default = {}
    
# }
#tags = merge(var.common_tags, var.vpc_tags)


# variable "project_name" { #my requrement is "vpc mane = roboshop-dev"
#     type = string
    
# }
# variable "environment" {
#     type = string
# }

# variable "igw_tags" {
#     type = map
#     default = {}
# }
variable "public_subnets_cidr" {
    type = list
    validation {
        condition = length(var.public_subnets_cidr) == 2
        error_message = "please give 2 public valid subnets"
    }
    default = ["10.0.1.0/24", "10.0.2.0/24"]
}

variable "public_subnets_tags" {
    default = {}
}

variable "private_subnets_cidr" {
    type = list
    validation {
        condition = length(var.private_subnets_cidr) == 2
        error_message = "please give 2 private valid subnets"
    }
    default = ["10.0.11.0/24", "10.0.12.0/24"]
    
}
variable "database_subnets_cidr" {
    type = list
    validation {
        condition = length(var.database_subnets_cidr) == 2
        error_message = "please give 2 private valid subnets"
    }
    default = ["10.0.21.0/24", "10.0.22.0/24"]
    
}

variable "private_subnets_tags" {
    default = {}
}

variable "database_subnets_tags" {
    default = {}
}

variable "aws_nat_gateway_tags" {
    default = {}
}

variable "public_route_table_tags" {
    default = {}
}

variable "private_route_table_tags" {
    default = {}
}
variable "database_route_table_tags" {
    default = {}
}
variable "common_tags" {
    default = {
    project = "roboshop"
    Environment = "Dev"
    Terraform = "true"
    }
}

variable "vpc_tags" {
    default =  {}

}

variable "project_name" {
    default = "roboshop"
}

variable "environment" {
    default = "dev"
}
variable "igw_tags" {
    default = {}

}
variable "is_peering_required" {
    
    type = bool
    default = true #peering is 1.running code & fetching default vpc id 
}
