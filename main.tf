#this is the root module

module "vpc" {
    source = "./vpc"
  
}
module "web" {
    source = "./web"
    sg = module.vpc.sg #module.<module_name>.<output_name>
    sn = module.vpc.pb_sn
}