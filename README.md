# Terraform

## Repository Structure

 - here's the recommended Terraform organizational structure.
```
.
README.md
main.tf
outputs.tf
variables.tf
+-- env
    +-- dev.tfvars
    +-- staging.tfvars
    +-- prod.tfvars
+-- vra
    +-- deployment
        +-- README.md
        +-- main.tf
        +-- output.tf
        +-- variables.tf
    +-- cloud_templates
        +-- README.md
        +-- main.tf
        +-- output.tf
        +-- variables.tf
    +-- ...
```
