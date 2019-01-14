#!/bin/bash -e

# Check for the credentials file
if [ ! -f "credentials.json" ]; then
    echo "You're missing a credentials.json file."
    echo "Go to: https://console.cloud.google.com/apis/credentials"
    echo "and generate a service account."
fi

# If terraform.tfvars does not exist, create a template one
if [ ! -f "terraform.tfvars" ]; then
    echo "Creating terraform variables template in terraform.tfvars"
    echo "Read instructions in the file on how to fill it out."

cat -> terraform.tfvars <<EOF
# ID of the Google Cloud project to be used
project_id = "{project_id}"

# Username and password to login to the cluster
cluter_master_username = "{username}"
cluter_master_password = "{password}"
EOF
fi
