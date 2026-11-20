# mongodb is accepting connections from catalogue on port number 27017
resource "aws_vpc_security_group_ingress_rule" "mongodb_catalogue" {
  security_group_id = local.mongodb_sg_id # destination where you are creating the rule

  referenced_security_group_id = local.catalogue_sg_id # source where traffic is comming from
  from_port         = 27017
  to_port           = 27017 
  ip_protocol       = "tcp"
}

# mongodb is accepting connections from user on port number 27017
resource "aws_vpc_security_group_ingress_rule" "mongodb_user" {
  security_group_id = local.mongodb_sg_id # destination where you are creating the rule

  referenced_security_group_id = local.user_sg_id # source where traffic is comming from
  from_port         = 27017
  to_port           = 27017 
  ip_protocol       = "tcp"
}

# mongodb is accepting connections from bastion on port number 22
resource "aws_vpc_security_group_ingress_rule" "mongodb_bastion" {
  security_group_id = local.mongodb_sg_id # destination where you are creating the rule

  referenced_security_group_id = local.bastion_sg_id # source where traffic is comming from
  from_port         = 22
  to_port           = 22 
  ip_protocol       = "tcp"
}

### redis ###

# redis is accepting connections from user on port number 6379
resource "aws_vpc_security_group_ingress_rule" "redis_user" {
  security_group_id = local.redis_sg_id # destination where you are creating the rule

  referenced_security_group_id = local.user_sg_id # source where traffic is comming from
  from_port         = 6379
  to_port           = 6379
  ip_protocol       = "tcp"
}

# redis is accepting connections from cart on port number 6379
resource "aws_vpc_security_group_ingress_rule" "redis_cart" {
  security_group_id = local.redis_sg_id # destination where you are creating the rule

  referenced_security_group_id = local.cart_sg_id # source where traffic is comming from
  from_port         = 6379
  to_port           = 6379
  ip_protocol       = "tcp"
}

# redis is accepting connections from bastion on port number 22
resource "aws_vpc_security_group_ingress_rule" "redis_bastion" {
  security_group_id = local.redis_sg_id # destination where you are creating the rule

  referenced_security_group_id = local.bastion_sg_id # source where traffic is comming from
  from_port         = 22
  to_port           = 22
  ip_protocol       = "tcp"
}

### mysql ###

# mysql is accepting connections from shipping on port number 3306
resource "aws_vpc_security_group_ingress_rule" "mysql_shipping" {
  security_group_id = local.mysql_sg_id # destination where you are creating the rule

  referenced_security_group_id = local.shipping_sg_id # source where traffic is comming from
  from_port         = 3306
  to_port           = 3306
  ip_protocol       = "tcp"
}

# mysql is accepting connections from bastion on port number 22
resource "aws_vpc_security_group_ingress_rule" "mysql_bastion" {
  security_group_id = local.mysql_sg_id # destination where you are creating the rule

  referenced_security_group_id = local.bastion_sg_id # source where traffic is comming from
  from_port         = 22
  to_port           = 22
  ip_protocol       = "tcp"
}

### Rabbitmq ###

# rabbitmq is accepting connections from shipping on port number 5672
resource "aws_vpc_security_group_ingress_rule" "rabbitmq_payment" {
  security_group_id = local.rabbitmq_sg_id # destination where you are creating the rule

  referenced_security_group_id = local.payment_sg_id # source where traffic is comming from
  from_port         = 5672
  to_port           = 5672
  ip_protocol       = "tcp"
}

# rabbitmq is accepting connections from bastion on port number 22
resource "aws_vpc_security_group_ingress_rule" "rabbitmq_bastion" {
  security_group_id = local.rabbitmq_sg_id # destination where you are creating the rule

  referenced_security_group_id = local.bastion_sg_id # source where traffic is comming from
  from_port         = 22
  to_port           = 22
  ip_protocol       = "tcp"
}

### Catalogue ###

# catalogue is accepting connections from backend_alb on port number 8080
resource "aws_vpc_security_group_ingress_rule" "catalogue_backend_alb" {
  security_group_id = local.catalogue_sg_id # destination where you are creating the rule

  referenced_security_group_id = local.backend_alb_sg_id # source where traffic is comming from
  from_port         = 8080
  to_port           = 8080
  ip_protocol       = "tcp"
}

# catalogue is accepting connections from cart on port number 8080
resource "aws_vpc_security_group_ingress_rule" "catalogue_cart" {
  security_group_id = local.catalogue_sg_id # destination where you are creating the rule

  referenced_security_group_id = local.cart_sg_id # source where traffic is comming from
  from_port         = 8080
  to_port           = 8080
  ip_protocol       = "tcp"
}

# catalogue is accepting connections from bastion on port number 22
resource "aws_vpc_security_group_ingress_rule" "catalogue_bastion" {
  security_group_id = local.catalogue_sg_id # destination where you are creating the rule

  referenced_security_group_id = local.bastion_sg_id # source where traffic is comming from
  from_port         = 22
  to_port           = 22
  ip_protocol       = "tcp"
}


### User ###

# user is accepting connections from backend_alb on port number 8080
resource "aws_vpc_security_group_ingress_rule" "user_backend_alb" {
  security_group_id = local.user_sg_id # destination where you are creating the rule

  referenced_security_group_id = local.backend_alb_sg_id # source where traffic is comming from
  from_port         = 8080
  to_port           = 8080
  ip_protocol       = "tcp"
}

# user is accepting connections from payment on port number 8080
resource "aws_vpc_security_group_ingress_rule" "user_payment" {
  security_group_id = local.user_sg_id # destination where you are creating the rule

  referenced_security_group_id = local.payment_sg_id # source where traffic is comming from
  from_port         = 8080
  to_port           = 8080
  ip_protocol       = "tcp"
}

# user is accepting connections from bastion on port number 22
resource "aws_vpc_security_group_ingress_rule" "user_bastion" {
  security_group_id = local.user_sg_id # destination where you are creating the rule

  referenced_security_group_id = local.bastion_sg_id # source where traffic is comming from
  from_port         = 22
  to_port           = 22
  ip_protocol       = "tcp"
}

### Cart ### 

# cart is accepting connections from shipping on port number 3306
resource "aws_vpc_security_group_ingress_rule" "cart_shipping" {
  security_group_id = local.cart_sg_id # destination where you are creating the rule

  referenced_security_group_id = local.shipping_sg_id # source where traffic is comming from
  from_port         = 8080
  to_port           = 8080
  ip_protocol       = "tcp"
}

# cart is accepting connections from backend_alb on port number 8080
resource "aws_vpc_security_group_ingress_rule" "cart_backend_alb" {
  security_group_id = local.cart_sg_id # destination where you are creating the rule

  referenced_security_group_id = local.backend_alb_sg_id # source where traffic is comming from
  from_port         = 8080
  to_port           = 8080
  ip_protocol       = "tcp"
}

# cart is accepting connections from bastion on port number 22
resource "aws_vpc_security_group_ingress_rule" "cart_bastion" {
  security_group_id = local.cart_sg_id # destination where you are creating the rule

  referenced_security_group_id = local.bastion_sg_id # source where traffic is comming from
  from_port         = 22
  to_port           = 22
  ip_protocol       = "tcp"
}

# cart is accepting connections from payment on port number 8080
resource "aws_vpc_security_group_ingress_rule" "cart_payment" {
  security_group_id = local.cart_sg_id # destination where you are creating the rule

  referenced_security_group_id = local.payment_sg_id # source where traffic is comming from
  from_port         = 8080
  to_port           = 8080
  ip_protocol       = "tcp"
}

### Shipping ###

# shipping is accepting connections from bastion on port number 22
resource "aws_vpc_security_group_ingress_rule" "shipping_bastion" {
  security_group_id = local.shipping_sg_id # destination where you are creating the rule

  referenced_security_group_id = local.bastion_sg_id # source where traffic is comming from
  from_port         = 22
  to_port           = 22
  ip_protocol       = "tcp"
}

# shipping is accepting connections from backend_alb on port number 8080
resource "aws_vpc_security_group_ingress_rule" "shipping_backend_alb" {
  security_group_id = local.shipping_sg_id # destination where you are creating the rule

  referenced_security_group_id = local.backend_alb_sg_id # source where traffic is comming from
  from_port         = 8080
  to_port           = 8080
  ip_protocol       = "tcp"
}

### Payment ###

# payment is accepting connections from bastion on port number 22
resource "aws_vpc_security_group_ingress_rule" "payment_bastion" {
  security_group_id = local.payment_sg_id # destination where you are creating the rule

  referenced_security_group_id = local.bastion_sg_id # source where traffic is comming from
  from_port         = 22
  to_port           = 22
  ip_protocol       = "tcp"
}

# payment is accepting connections from backend_alb on port number 8080
resource "aws_vpc_security_group_ingress_rule" "payment_backend_alb" {
  security_group_id = local.payment_sg_id # destination where you are creating the rule

  referenced_security_group_id = local.backend_alb_sg_id # source where traffic is comming from
  from_port         = 8080
  to_port           = 8080
  ip_protocol       = "tcp"
}

### Backend ALB ###

# backend_alb is accepting connections from frontend on port number 80
resource "aws_vpc_security_group_ingress_rule" "backend_alb_frontend" {
  security_group_id = local.backend_alb_sg_id # destination where you are creating the rule

  referenced_security_group_id = local.frontend_sg_id # source where traffic is comming from
  from_port         = 80
  to_port           = 80
  ip_protocol       = "tcp"
}

# backend_alb is accepting connections from bastion on port number 80
resource "aws_vpc_security_group_ingress_rule" "backend_alb_bastion" {
  security_group_id = local.backend_alb_sg_id # destination where you are creating the rule

  referenced_security_group_id = local.bastion_sg_id # source where traffic is comming from
  from_port         = 80
  to_port           = 80
  ip_protocol       = "tcp"
}

# backend_alb is accepting connections from vpn on port number 80
resource "aws_vpc_security_group_ingress_rule" "backend_alb_vpn" {
  security_group_id = local.backend_alb_sg_id # destination where you are creating the rule

  referenced_security_group_id = local.vpn-sg-id # source where traffic is comming from
  from_port         = 80
  to_port           = 80
  ip_protocol       = "tcp"
}

### Front End ###

# frontend is accepting connections from frontend_alb on port number 80
resource "aws_vpc_security_group_ingress_rule" "frontend_frontend_alb" {
  security_group_id = local.frontend_sg_id # destination where you are creating the rule

  referenced_security_group_id = local.frontend_alb_sg_id # source where traffic is comming from
  from_port         = 80
  to_port           = 80
  ip_protocol       = "tcp"
}

# frontend is accepting connections from bastion on port number 22
resource "aws_vpc_security_group_ingress_rule" "frontend_bastion" {
  security_group_id = local.frontend_sg_id # destination where you are creating the rule

  referenced_security_group_id = local.bastion_sg_id # source where traffic is comming from
  from_port         = 22
  to_port           = 22
  ip_protocol       = "tcp"
}

# frontend is accepting connections from vpn on port number 22
resource "aws_vpc_security_group_ingress_rule" "frontend_vpn" {
  security_group_id = local.frontend_sg_id # destination where you are creating the rule

  referenced_security_group_id = local.vpn-sg-id # source where traffic is comming from
  from_port         = 22
  to_port           = 22
  ip_protocol       = "tcp"
}

### Front End ALB ###

# frontend_alb is accepting connections from public_http on port number 22
resource "aws_vpc_security_group_ingress_rule" "frontend_alb_public_http" {
  security_group_id = local.frontend_alb_sg_id # destination where you are creating the rule

  cidr_ipv4 = "0.0.0.0/0"
  from_port         = 22
  to_port           = 22
  ip_protocol       = "tcp"
}

# frontend_alb is accepting connections from public_https on port number 22
resource "aws_vpc_security_group_ingress_rule" "frontend_alb_public_https" {
  security_group_id = local.frontend_alb_sg_id # destination where you are creating the rule

  cidr_ipv4 = "0.0.0.0/0"
  from_port         = 443
  to_port           = 443
  ip_protocol       = "tcp"
}



