provider "aws" {
    region     = "${var.region}"    
    access_key = "${var.access_key}"
    secret_key = "${var.secret_key}"
}

################## Creating an EKS Cluster ##################
resource "aws_eks_cluster" "cluster" {
  name     = "whiz"
  role_arn = "<YOUR_IAM_ROLE_ARN>"

  vpc_config {
    subnet_ids = ["SUBNET-ID 1", "SUBNET-ID 2"]
  }
}

