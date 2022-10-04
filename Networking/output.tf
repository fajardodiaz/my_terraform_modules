output "vpc_id" {
  value = aws_vpc.npd_vpc.id
}

output "public_subnets_id" {
  value = ["${aws_subnet.npd_public_subnet.*.id}"]
}

output "private_subnets_id" {
  value = ["${aws_subnet.npd_private_subnet.*.id}"]
}