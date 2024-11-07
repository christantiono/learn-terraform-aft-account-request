module "account1234" {
  source = "./modules/aft-account-request"

  control_tower_parameters = {
    AccountEmail              = "tantionochris+demo1234@gmail.com"
    AccountName               = "aft-demo-client1234"
    ManagedOrganizationalUnit = "client A"
    SSOUserEmail              = "tantionochris@gmail.com"
    SSOUserFirstName          = "demo"
    SSOUserLastName           = "1234"
  }

  account_tags = {
    "Learn Tutorial" = "AFT-Demo-1234"
  }

  change_management_parameters = {
    change_requested_by = "HashiCorp Learn-client-a"
    change_reason       = "Learn AWS Control Tower Account Factory for Terraform"
  }

  custom_fields = {
    group = "non-prod"
  }

  account_customizations_name = "sandbox"
}
