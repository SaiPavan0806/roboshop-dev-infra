resource "aws_security_group_rule" "backend_alb_bastion" {
type = "ingress"
security_group_id = local.backend_alb_sg_id # backend ALB SG ID
source_security_group_id = local.bastion_sg_id # bastion SG ID
from_port = 80
protocol = "tcp"
to_port = 80
}

resource "aws_security_group_rule" "backend_laptop" {
type = "ingress"
security_group_id = local.bastion_sg_id # backend ALB SG ID
cidr_blocks = ["0.0.0.0/0"] # laptop IP
from_port = 22
protocol = "tcp"
to_port = 22
}
