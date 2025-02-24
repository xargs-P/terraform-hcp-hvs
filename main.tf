# Copyright (c) HashiCorp, Inc.
# SPDX-License-Identifier: MPL-2.0

provider "hcp" {
  project_id  = var.hcp_project_id
  client_id     =  var.service_principal_client_id
  client_secret =  var.service_principal_client_secret
}
 
resource "hcp_vault_secrets_app" "my-voice-is-my-passport" {
  app_name    = "my-voice-is-my-passport"
  description = "My new app!"
}
resource "hcp_vault_secrets_secret" "secret-example" {
  app_name     = hcp_vault_secrets_app.my-voice-is-my-passport.app_name
  secret_name  = "no_more"
  secret_value = "secrets"
}