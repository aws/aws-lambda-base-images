## AWS Lambda Base Container Images

AWS provided base images for Lambda contain all the required components to run your functions packaged as container images on AWS Lambda.
These base images contain the Amazon Linux Base operating system, the runtime for a given language, dependencies and the Lambda Runtime Interface Client (RIC), which implements the Lambda [Runtime API](https://docs.aws.amazon.com/lambda/latest/dg/runtimes-api.html).
The Lambda Runtime Interface Client allows your runtime to receive requests from and send requests to the Lambda service.

To learn more about how these images are used, check out the AWS documentation on how to [Create an image from an AWS base image for Lambda](https://docs.aws.amazon.com/lambda/latest/dg/images-create.html#images-create-1).

### Maintenance policy

AWS will regularly provide security patches and other updates for these base images.
These images are similar to the AWS Lambda execution environment on the cloud to allow customers to easily packaging functions to the container image.
However, we may choose to optimize the container images by changing the components or dependencies included.
When deployed to AWS Lambda these images will be run as-is.

This is more of an *artifact store* than a Git repository, for reasons explained later. Please note that **branches other than `main` are regularly force-pushed, and content may disappear without warning**.

## What we're doing here

As soon as new AWS Lambda base images are available, an automated process snapshots the layers and configuration used to create these images and force-pushes them to this repository.

For examples, please see other branches in this repository.

Committed alongside the Dockerfiles in the branches are the tarballs, which balloon the repository size. Thus, we force-push branches that contain the tarballs.

Although we force-push the files away, the older versions of our images remain present on DockerHub and Amazon ECR.

## Usage

### Requirements
To re-create the AWS Lambda base images, make sure you have the following pre-requisites set up:
- [git](https://git-scm.com/downloads)
- [git-lfs](https://git-lfs.github.com/)
- [docker](https://docs.docker.com/get-docker/)

### Building an image
First, clone this repository:
```
git clone https://github.com/aws/aws-lambda-base-images
```

Then, checkout the branch relevant to the Lambda base image you want to build.

eg. to build the `nodejs18.x` image, start by checking out the `nodejs18.x` branch:
```
git checkout nodejs18.x
```
fetch the large files
```
git lfs fetch
git lfs install
git lfs checkout .
```

Finally you can build your image as such:
```
docker build -t nodejs18.x:local -f Dockerfile.nodejs18.x .
```

This will use the Dockerfile at `Dockerfile.nodejs18.x` and tag the newly-built image as `nodejs18.x:local`.


## Licence

This project is licensed under the Apache-2.0 License.
