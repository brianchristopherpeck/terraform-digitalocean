# Terraform Module fo Digital Ocean

## Spins up a cluster of DO images (premade by packer)

## Plan
`terraform plan`

## Apply
`terraform apply`

### Environment Variables

DIGITALOCEAN_TOKEN=DO-api-token
TF_VAR_digitalocean_ssh_fingerprint=DO-ssh-fingerprint
TF_VAR_image=DO-image-number
TF_VAR_name=DO-instance-name
TF_VAR_region=DO-region
TF_VAR_size=DO-instance-size
TF_VAR_count=number-of-DO-images-to-deploy

\*\*\*I prefer direnv to store the environment variables locally. This allows me to run `terraform apply` alone, since the environment variables persist in my shell environment. It also allows me to have multiple preset environments.

direnv can be downloaded [here](https://direnv.net/)

#### If you chose not to use a preloaded environment

You can run this command:

```
terraform apply -var TF_VAR_digitalocean_ssh_fingerprint=DO-ssh-fingerprint\
 TF_VAR_image=DO-image-number \
 TF_VAR_name=DO-instance-name \
 TF_VAR_region=DO-region \
 TF_VAR_size=DO-instance-size \
 TF_VAR_count=number-of-DO-images-to-deploy

``` 
