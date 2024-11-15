# Simple S3 but with RemoteState

- This is similar to what we did [here](/S3_IAM/Basic/README.md)
- The difference is I wanted to familirize with remote state
- This boilerplate must be tested against real AWS

## Problems

- We can't setup our `secret` and `access` keys into localstack or mock them but the backend needs them to establishe a connection and put the tfstate into it
- We can't add vars into `terraform > backend "s3"` and thus I created a [template](backend.hcl.template) and we execute now 

    ```bash
    terraform init -backend-config=backend.hcl 
    ```