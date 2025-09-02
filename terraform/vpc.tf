resource "aws_vpc" "this" {
  cidr_block = var.vpc_cidr
  tags = { Name = "${var.project_name}-vpc" }
}
# Subnets, IGW, NAT, Routes omitted for brevity (already shared in chat)...