module "roboshop" {
    #source = "../../terraform-aws-vpc"
    source = "git::https://github.com/nikitha84/terraform-aws-vpc.git?ref=main"
    is_peering_required = var.is_peering_required
}

