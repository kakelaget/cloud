# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
# DEPLOY A CLUSTER OF EC2 INSTANCE
# This template runs a simple "Hello, World" web server on a cluster of EC2 Instance
# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

# ------------------------------------------------------------------------------
# CONFIGURE OUR AWS CONNECTION
# ------------------------------------------------------------------------------

provider "aws" {
  region = "eu-west-1"
  profile = "kakelaget"
  shared_credentials_file = "/Users/hpo/.aws/credentials"
}

# ---------------------------------------------------------------------------------------------------------------------
# CONFIGURE REMOTE STATE
# ---------------------------------------------------------------------------------------------------------------------

terraform {
  backend "s3" {
    bucket = "kakelaget-terraform-states"
    encrypt = true
    key    = "dev/terraform.tfstate"
    region = "eu-west-1"
  }
}