resource "aws_lb" "backend_alb" {
  name               = "${local.common_name_suffix}-backend-alb" #Roboshop-dev-backend-alb
  internal           = true
  load_balancer_type = "application"
  security_groups    = [local.backend_alb_sg_id]
  subnets            = local.public_subnet_ids

  enable_deletion_protection = true # Prevents accidental deletion from UI

 
   tags = merge(
    local.common_tags,
    {
        Name = "${local.common_name_suffix}-backend-alb"
    }
  )
}