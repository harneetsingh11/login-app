output "vpc_id" {
  description = "ID of the VPC"
  value       = aws_vpc.main.id
}

/*output "private_subnet_1_id" {
  description = "Private subnet 1 ID"
  value       = aws_subnet.private[0].id
}

output "private_subnet_2_id" {
  description = "Private subnet 2 ID"
  value       = aws_subnet.private[1].id
}

output "public_subnet_1_id" {
  description = "Public subnet 1 ID"
  value       = aws_subnet.public[0].id
}

output "public_subnet_2_id" {
  description = "Public subnet 2 ID"
  value       = aws_subnet.public[1].id
}*/



