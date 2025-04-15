# Copyright Amazon.com, Inc. or its affiliates. All rights reserved.
# SPDX-License-Identifier: Apache-2.0
#
module "aft" {
  source = "./modules/aft-account-request"

  control_tower_parameters = {
    AccountEmail = "mspezie.aws.lab4@dxc.com"
    AccountName  = "mspezie.aws.lab4"
    # Syntax for top-level OU
    ManagedOrganizationalUnit = "AFT"
    # Syntax for nested OU
    # ManagedOrganizationalUnit = "Sandbox (ou-xfe5-a8hb8ml8)"
    SSOUserEmail     = "mspezie.aws.lab4@dxc.com"
    SSOUserFirstName = "Mirko"
    SSOUserLastName  = "Spezie"
  }

  account_tags = {
    "ABC:Owner"       = "owner@example.com"
    "ABC:Environment" = "Prod"
    "ABC:Project"     = "LandingZone"
  }

  change_management_parameters = {
    change_requested_by = "John Doe"
    change_reason       = "importing log archive account"
  }

  custom_fields = {
  }

  account_customizations_name = "aft"
}
