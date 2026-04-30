# Bootstrap Terraform Backend

This folder is the **first step** of the project.

It provisions the Terraform backend resources on Amazon Web Services:

* S3 bucket for remote state storage
* DynamoDB table for state locking

This backend is used to store the Terraform state of the main infrastructure.

---

## Prerequisites

Configure AWS credentials:

```bash id="m4q7vt"
aws configure
```

Verify access:

```bash id="u9k2pr"
aws sts get-caller-identity
```

Check Terraform:

```bash id="w6n3xs"
terraform version
```

---

## Usage

```bash id="r1m8ta"
terraform init
terraform plan -var-file="env.tfvars"
terraform apply -var-file="env.tfvars"
```

