# Simple S3 with IAM

- All policies must have this `"Version": "2012-10-17"`
- We used `docker-compose` to run *localstack* and *aws-cli* so we don't need to install and configure aws-cli in our computer
- This is a simple task of
    1. Create a user
    2. Create a bucket
    3. Create a group
    4. Add User to group
    5. Get the policy template and inject variables to it
    6. Add policy to group
    7. Add Element to the Bucket

- I failed to have dashboard even after setting *PORT_WEB_UI*

## Little Tuto

1. To run localstack 
```bash
docker compose up -d
```
2. To run terraform
```bash
terraform init
terraform fmt # it's cool to format before we plan
# we can use terraform validate to validate our syntaxe before plan 
terraform plan
terraform apply
```
3. clean up
    1. Destroy the infrastructure
    ```bash
    terraform destroy
    ```
    2. Shutdown the infra
    ```bash
    docker compose down
    ```
    3. Maybe cleanup volume
    ```bash
    docker volume ls # list to find the name
    docker volume rm <volume_name>
    ```