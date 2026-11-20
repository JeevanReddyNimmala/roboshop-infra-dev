/* module "mongodb_sg" {
  source = "git::https://github.com/JeevanReddyNimmala/terraform-aws-sg.git?ref=main"
  project = var.project
  environment = var.environment
  sg_name = var.sg_name
  vpc_id = local.vpc_id
} */

module "sg" {
    count = length(var.sg_name)
  source = "git::https://github.com/JeevanReddyNimmala/terraform-aws-sg.git?ref=main"
  project = var.project
  environment = var.environment
  sg_name = replace(var.sg_name[count.index],"_","-")
  vpc_id = locals.vpc_id
}