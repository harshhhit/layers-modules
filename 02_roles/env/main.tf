module "policy" {
    source = "../modules/policy"
    codepipeline_policy = var.codepipeline_policy

}

module "roles" {
    source = "../modules/policy/rolesec2"
    
}

