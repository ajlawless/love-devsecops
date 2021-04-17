variable "cluster-name" {
  default     = "love-bonito-eks"
  description = "Enter eks cluster name - example like eks-demo, eks-dev etc"
  type    = "string"
}

variable "eks-worker-ami" {
  default     = "ami-08bc6492cccba39b9"
  description = "Please visit here - https://docs.aws.amazon.com/eks/latest/userguide/eks-optimized-ami.html and select your pre-baked AMI depending on the cluster version and the region you are planning to launch cluster into"
}
variable "volume_size" {
  default     = 25
  description = "Enter size of the volume"
}

# In eks worker node instance type directly affects the number of PODs can run on a Node. Choose wisely.
# https://github.com/awslabs/amazon-eks-ami/blob/master/files/eni-max-pods.txt

variable "worker-node-instance_type" {
  default     = "t2.medium"
  description = "enter worker node instance type"
}

variable "ssh_key_pair" {
   default     = "eks-test"
   description = "Enter SSH keypair name that already exist in the account"

}

variable "public_subnets" {
    type    = "list"
    description = "you can replace these values as per your choice of subnet range"
    default = ["10.15.0.0/22", "10.15.4.0/22", "10.15.8.0/22"]
}

variable "private_subnets" {
    type    = "list"
    description = "you can replace these values as per your choice of subnet range"
    default = ["10.15.12.0/22", "10.15.16.0/22", "10.15.20.0/22"]
}

variable "aws_profile" {
  default = "personal"
  description = "configure AWS CLI profile"
}

variable "eks_version" {
  default     = "1.17"
   description = "kubernetes cluster version provided by AWS EKS - It would be like 1.12 or 1.13"

}

variable "region" {
  default     = "eu-west-1"
   description = "Enter region you want to create EKS cluster in"

}
