//--------------------------------------------------------------------
// Variables
variable "aws_account_name" {}
variable "service_name" {}
variable "vault_addr" {}
variable "vault_token" {}

//--------------------------------------------------------------------
// Modules
module "test_instance" {
  source  = "app.terraform.io/Darnold-DevTeam/test-instance/aws"
  version = "1.0.0"

  aws_account_name = "${var.test_instance_aws_account_name}"
  service_name = "${var.test_instance_service_name}"
  vault_addr = "${var.test_instance_vault_addr}"
  vault_token = "${var.test_instance_vault_token}"
}
