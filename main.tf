# Copyright (c) HashiCorp, Inc.
# SPDX-License-Identifier: MPL-2.0

provider "hcp" {

}
 
resource "hcp_vault_secrets_app" "my-voice-is-my-passport" {
  app_name    = "my-voice-is-my-passport"
  description = "My new app!"
  project_id  = var.hcp_project_id
}
resource "hcp_vault_secrets_secret" "secret-example" {
  app_name     = hcp_vault_secrets_app.my-voice-is-my-passport.app_name
  secret_name  = "no more"
  secret_value = "secrets"
}