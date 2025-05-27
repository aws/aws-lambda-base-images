## AWS Lambda Base Container Images

AWS provided base images for Lambda contain all the required components to run your functions packaged as container images on AWS Lambda. These images are published to the [Lambda public ECR repository](https://github.com/aws/aws-lambda-base-images) and [DockerHub](https://hub.docker.com/search?q=lambda+base+images). To learn more about how to use these images, check out the AWS documentation on how to [Create an image from an AWS base image for Lambda](https://docs.aws.amazon.com/lambda/latest/dg/images-create.html#images-create-1).

Each image contains Amazon Linux system libraries, the language runtime for a given programming language, dependencies, certificates, AWS SDK (Node.js, Python, and Ruby only) and the Lambda Runtime Interface Client (RIC).
The RIC integrates with the [Lambda Runtime API](https://docs.aws.amazon.com/lambda/latest/dg/runtimes-api.html) to receive function invoke requests from the Lambda service. It then calls your function handler code, and returns the response to the Lambda service.
These images are very similar to the AWS Lambda managed runtimes, although we may choose to optimize the container images by changing the components or included dependencies.

### Maintenance policy

Consistent with the AWS Lambda [shared responsibility model](https://docs.aws.amazon.com/lambda/latest/dg/lambda-runtimes.html#runtimes-shared-responsibility), Lambda provides regular updates to managed runtimes and container base images with security patches and other updates. As with any security patching, there is typically a short interval between a CVE being published and the corresponding security patch being applied. It is therefore normal for security scans of Lambda base images to report new CVEs from time to time. These CVEs are typically patched in our next update cycle.

You can file issues in this repository to flag issues or send feedback to the Lambda Runtimes team. However, please do not create a public GitHub issue to request information on CVE patching status. Any such issues will be closed. If you require information relating to the patching status of specific CVEs in Lambda runtime images, please contact [AWS Support](https://aws.amazon.com/support).

## What we're doing here

As soon as new AWS Lambda base images are available, an automated process snapshots the layers and configuration used to create these images and publishes them to this repository. A separate branch is used for each image.

To avoid ballooning the respository size, we force-push the branches that contain the tarballs. As a result, content may disappear without warning. The older versions of our images remain present on DockerHub and Amazon ECR.

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

Finally you can build your image as such:
```
docker build -t nodejs18.x:local -f Dockerfile.nodejs18.x .
```

This will use the Dockerfile at `Dockerfile.nodejs18.x` and tag the newly-built image as `nodejs18.x:local`.


## Licence

This project is licensed under the Apache-2.0 License.
