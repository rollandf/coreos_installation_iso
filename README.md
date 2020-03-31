# coreos_installation_iso

This image is a tool to create a coreOS image with a passed ignition file.
The output of the container is a ISO live CD image that will be uploaded to s3 of your choice.

Building a builder image:
* Update the COREOS IMAGE in the Docker file to the coreOS live CD ISO of you'r choice
* Build the docker image and push to you registry

###Using the image:
the parameters are passed to the image via env vars, 
to build a image the passed params are:
IGNITION_CONFIG : the ignition.conf file 
IMAGE_NAME      : the name of your choice for the image
S3_BUCKET       : s3 bucket where the image will be uploaded (default: test)
S3_ENDPOINT_URL : s3 endpoint url

aws_access_key_id   
aws_secret_access_key

