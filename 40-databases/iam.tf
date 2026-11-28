resource "aws_iam_role" "mysql" {
  name               = "${var.project}-${var.environment}-mysql"
  assume_role_policy = jsonencode({
    Version = "2012-10-17"
    Statement = [
      {
        Action = "sts:AssumeRole"
        Principal = {
          Service = "ec2.amazonaws.com"
        }
        Effect = "Allow"
        Sid    = ""
      }
    ]
  })
  
}

resource "aws_iam_policy" "mysql" {
  name        = "${var.project}-${var.environment}-mysql"
    description = "IAM policy to attache Roboshop MYSQl instances"

  # Terraform's "jsonencode" function converts a
  # Terraform expression result to valid JSON syntax.
  policy = templatefile("${path.module}/mysql-policy.json.tftpl", {
    account_id = local.account_id
    project     = var.project
    environment  = var.environment
  })
  tags = merge(
  local.common_tags,
  {
    Name = "${var.project}-${var.environment}-mysql"
  } 
  ) 
}

resource "aws_iam_role_policy_attachment" "mysql" {
  role       = aws_iam_role.mysql.name
  policy_arn = "arn:aws:iam::aws:policy/AdministratorAccess"
}

resource "aws_iam_instance_profile" "mysql" {
  name = "${var.project}-${var.environment}-mysql"
  role = aws_iam_role.mysql.name
}

