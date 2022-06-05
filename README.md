# terraform-aws-eks-learn
an experimental terraform module for creating aws eks cluster 

## Usage
Example usage (locally)
```hcl
module "modules" {
  source            = "./modules"
  aws_region        = "ap-southeast-1"
  aws_profile       = "reynaldi"
  vpc_name          = "reynaldi-tf-test"
  vpc_cidr_block    = "10.0.0.0/16"
  public_subnets    = ["10.0.4.0/24", "10.0.5.0/24", "10.0.6.0/24"]
  private_subnets   = ["10.0.1.0/24", "10.0.2.0/24", "10.0.3.0/24"]
  name_prefix       = "reyeks-tftest"
  worker_group      = "reyeksworker-tftest"
  instance_type     = "t2.small"
  des_capacity      = "2"

}
```
## Notes

* This module using AccessKey and SecretKey are from aws cli configured `profile`. If you have not set them
  yet, please install [aws-cli](https://docs.aws.amazon.com/cli/latest/userguide/getting-started-install.html) and configure it.
  
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | > = 0.14.0 |
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | >= 3.20.0 |
| <a name="requirement_kubernetes"></a> [kubernetes](#requirement\_aws) | >= 2.0.1 |



## License

MIT Licensed. See LICENSE for full details.

## Reference

* [Terraform-Learn-EKS(AWS)](https://learn.hashicorp.com/tutorials/terraform/eks?in=terraform/kubernetes)
* [Terraform-Learn-EKS(AWS) Github](https://github.com/hashicorp/learn-terraform-provision-eks-cluster)
