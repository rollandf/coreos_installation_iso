# coreos_installation_iso

This image is a tool to create a CoreOS image with a passed ignition file.
The output of the container is a ISO live CD image that will be uploaded to a S3 storage service of your choice.

Building a builder image:
* Update the `COREOS_IMAGE` in the Docker file to the CoreOS live CD ISO of your choice.
* Build the Docker image and push to your registry.

### Using the image:
The parameters are passed to the image via env vars.
To build a image the passed parameters are:

```
IGNITION_CONFIG       : the ignition.conf file
IMAGE_NAME            : the name of your choice for the image
S3_BUCKET             : S3 bucket where the image will be uploaded (default: test)
S3_ENDPOINT_URL       : S3 endpoint url
aws_access_key_id     : S3 access key ID
aws_secret_access_key : S3 access key
```
