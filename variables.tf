# Copyright (c) HashiCorp, Inc.
# SPDX-License-Identifier: MPL-2.0

variable "hcp_project_id" {
  description = "ID of HCP Project to deploy module into."
}

variable "service_principal_client_id" {
  description = "Service Principal Client ID"
}

variable "service_principal_client_secret" {
  description = "Service Principal Client Secret"
  sensitive   = true
}