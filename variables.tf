# variable "project_name" {
#     type = string
#     default = "expense"
# }

# variable "common_tags" {
#     type = map
#     default = {
#         Project = "Expense"
#         Environment = "dev"
#         Terraform = true
#     }
# }

# variable "public_subnet_cidrs" {
#     type = list
#     default = ["10.0.1.0/24", "10.0.2.0/24"]
# }


# variable "private_subnet_cidrs" {
#     type = list
#     default = ["10.0.11.0/24", "10.0.12.0/24"]
# }

# variable "database_subnet_cidrs" {
#     type = list
#     default = ["10.0.21.0/24", "10.0.22.0/24"]
# }

# variable "is_peering_required" {
#     type = bool
#     default = true
# }

variable "project_name" {
  description = "Name of the project"
  type        = string
  default     = "expense"
}

variable "common_tags" {
  description = "Common tags applied to all resources"
  type        = map(string)
  default = {
    Project     = "Expense"
    Environment = "dev"
    Terraform   = "true"
  }
}

variable "public_subnet_cidrs" {
  description = "List of CIDR blocks for public subnets"
  type        = list(string)
  default     = ["10.0.1.0/24", "10.0.2.0/24"]
}

variable "private_subnet_cidrs" {
  description = "List of CIDR blocks for private subnets"
  type        = list(string)
  default     = ["10.0.11.0/24", "10.0.12.0/24"]
}

variable "database_subnet_cidrs" {
  description = "List of CIDR blocks for database subnets"
  type        = list(string)
  default     = ["10.0.21.0/24", "10.0.22.0/24"]
}

variable "is_peering_required" {
  description = "Whether VPC peering should be created"
  type        = bool
  default     = true
}
