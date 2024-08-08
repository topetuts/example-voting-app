data "aws_iam_role" "dev-role" {
  name = var.role_name
}

resource "aws_eks_cluster" "dev-eks" {
  name     = "dev-eks"
  role_arn = data.aws_iam_role.dev-role.arn

  vpc_config {
    subnet_ids = [aws_subnet.dev-subnet1.id, aws_subnet.dev-subnet2.id]
  }
  

}

# resource "aws_eks_node_group" "dev-node-group" {
#   cluster_name    = aws_eks_cluster.dev-eks.name
#   node_group_name = "dev-node-group"
#   node_role_arn   = data.aws_iam_role.dev-role.arn
#   subnet_ids      = [aws_subnet.dev-subnet1.id, aws_subnet.dev-subnet2.id]
#   scaling_config {
#     desired_size = 2
#     max_size     = 3
#     min_size     = 2
#   }

#   update_config {
#     max_unavailable = 1
#   }

#   instance_types = ["t3.medium"]

# }