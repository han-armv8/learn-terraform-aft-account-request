module "sandbox" {
  source = "./modules/aft-account-request"

  control_tower_parameters = {
    AccountEmail              = "han.li+sandboxaft@nedap.com"
    AccountName               = "sandbox-aft"
    ManagedOrganizationalUnit = "sandbox"
    SSOUserEmail              = "han.li@irdeto.com"
    SSOUserFirstName          = "Han"
    SSOUserLastName           = "Li"
  }

  account_tags = {
    "ndp:org:bu" = "general"
  }

  change_management_parameters = {
    change_requested_by = "Han Li"
    change_reason       = "Learn AWS Control Tower Account Factory for Terraform"
  }

  custom_fields = {
    group = "non-prod"
  }

  account_customizations_name = "sandbox"
}
