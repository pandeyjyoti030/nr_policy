terraform {
  required_version = "~> 1.0"
  required_providers {
    newrelic = {
      source  = "newrelic/newrelic"
    }
  }
}

# Configure the New Relic provider
provider "newrelic" {
  account_id = "4003058"
  api_key = "NRAK-PA9WP9H1G3UUDRUCF930LPFPM1X"    # usually prefixed with 'NRAK'
  region = "US"                        # Valid regions are US and EU
}