## Kubernetes Experiment

This repository contains the code to fully automate the infrastructure and deployment for the
applications that I develop for my personal projects.

### What am I using?

- Google Cloud
- GKE as the Kubernetes provider
- Terraform to automate the creation of all the infrastructure

## Pre-requisites

- Only tested on my Mac
- [Terraform](https://www.terraform.io/downloads.html)

## Getting Started

1. Run `./setup.sh` and you'll get:
    1. A warning about `credentials.json` file
    1. A `terraform.tfvars` file in the root
1. Follow the instructions to create the credentials file
1. Open `terraform.tfvars` and fill the template variables with real values
1. Run `terraform init` to load all the plugins and providers
1. Run `terraform apply`
1. Sit an relax as the infrastructure gets created
