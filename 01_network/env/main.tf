module "vpc" {
    source = "../modules/vpc/"
    vpc.id = var.vpc_id
    
}

module "subnet" {
    source = "../modules/subnet/"
    public_subnet_id = var.public_subnet_id
    private_subnet_id = var.private_subnet_id

}

module "igw" {
    source = "../modules/igw/"
    igw_id = var.igw_id
}

module "routable" {
    source = "../modules/routetable/"
    
}