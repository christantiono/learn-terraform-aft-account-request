module "sandbox2" {
  source = "./modules/aft-account-request"

  control_tower_parameters = {
    AccountEmail              = "tantionochris+clienttechsuite@gmail.com"
    AccountName               = "ClientTechSuiteProduction"
    ManagedOrganizationalUnit = "Client Tech Suite"
    SSOUserEmail              = "tantionochris@gmail.com"
    SSOUserFirstName          = "TechSuite"
    SSOUserLastName           = "Administrator"
  }

  account_tags = {
    "Learn Tutorial" = "This is for tech suite prod"
  }

  change_management_parameters = {
    change_requested_by = "HashiCorp Learn-client-a"
    change_reason       = "Learn AWS Control Tower Account Factory for Terraform"
  }

  custom_fields = {
    group = "prod"
  }

  account_customizations_name = "sandbox"
}
