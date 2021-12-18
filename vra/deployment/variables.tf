# Input variable: url
variable "url" {
  description = "The URL of the vRealize Automation environment either vRA 8.x or vRA Cloud"
  type = string
  default = "https://lxmarpvra8-01.bedford.progress.com"
}

# Input variable: refresh_token
variable "refresh_token" {
  description = "The refresh token to connect to the vRealize Automation environment"
  type = string
  default = ""
}

# Input variable: insecure
variable "insecure" {
  description = "Should SSL verification be skipped? true = skip ssl verification"
  type = bool
  default = false
}

# Input variable: blueprint id
variable "blueprint_id" {
  description = "UUID of the blueprint"
  type = string
  default = ""
}

# Input variable: blueprint version
variable "blueprint_version" {
  description = "version of the blueprint"
  type = string
  default = ""
}

# Input variable: blueprint version
variable "blueprint_name" {
  description = "UUID of the blueprint"
  type = string
  default = ""
}

# Input variable: project name
variable "project_name" {
  description = "project name"
  type = string
  default = ""
}

# Input variable: Deployment Name
variable "deployment_name" {
  description = "deployment name"
  type = string
  default = ""
}