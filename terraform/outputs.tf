output "alb_dns" { value = aws_lb.alb.dns_name }
output "rds_endpoint" { value = aws_db_instance.postgres.address }
output "ecr_repo" { value = aws_ecr_repository.app.repository_url }