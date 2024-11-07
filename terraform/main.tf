module "sandbox2" {
  source = "./modules/aft-account-request"

  control_tower_parameters = {
    AccountEmail              = "tantionochris+work123@gmail.com"
    AccountName               = "aft-demo-client123"
    ManagedOrganizationalUnit = "client A"
    SSOUserEmail              = "tantionochris@gmail.com"
    SSOUserFirstName          = "client"
    SSOUserLastName           = "123"
  }

  account_tags = {
    "Learn Tutorial" = "AFT-Demo-123"
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
