# Copyright Amazon.com, Inc. or its affiliates. All rights reserved.
# SPDX-License-Identifier: Apache-2.0
#
module "management" {
  source = "./modules/aft-account-request"

  control_tower_parameters = {
    AccountEmail = "mirkoguido.spezie@dxc.com"
    AccountName  = "management"
    # Syntax for top-level OU
    ManagedOrganizationalUnit = "Root"
    # Syntax for nested OU
    # ManagedOrganizationalUnit = "Sandbox (ou-xfe5-a8hb8ml8)"
    SSOUserEmail     = "mirkoguido.spezie@dxc.com"
    SSOUserFirstName = "Mirko"
    SSOUserLastName  = "Spezie"
  }

  account_tags = {
    "ABC:Owner"       = "mirkoguido.spezie@dxc.com"
    "ABC:Environment" = "Prod"
    "ABC:Project"     = "LandingZone"
  }

  change_management_parameters = {
    change_requested_by = "Mirko Spezie"
    change_reason       = "importing log archive account"
  }

  custom_fields = {
  }

  account_customizations_name = "management"
}
