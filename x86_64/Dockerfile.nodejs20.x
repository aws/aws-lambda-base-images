FROM scratch

ADD 3362dea677cfb6bfb688635228b9fad35e74562983c9f5b42bb616502dcef1e4.tar.xz /
ADD 41203fc38025753cc6b76c47286ee923f3791f4fd9e1d3a7956d60340436f8af.tar.xz /
ADD 506a75496c74db9b0d6b3df485a9d68fed2654d9eb6dd195f0e2c2ab532d8ab1.tar.xz /
ADD 5b6dd718a504802ff74cbe86a9fbfe4d505b1436555a6b6247f48920429a47a6.tar.xz /
ADD be701b9bd97b0756d031f2c056b4fa6ac6ec931de0259321561228ec039317e6.tar.xz /
ADD fd1c557ac7c1c3682ae2ddcdb33858d784d580d36b37e3564c4c1671b0db3513.tar.xz /

ENV LANG=en_US.UTF-8
ENV TZ=:/etc/localtime
ENV PATH=/var/lang/bin:/usr/local/bin:/usr/bin/:/bin:/opt/bin
ENV LD_LIBRARY_PATH=/var/lang/lib:/lib64:/usr/lib64:/var/runtime:/var/runtime/lib:/var/task:/var/task/lib:/opt/lib
ENV LAMBDA_TASK_ROOT=/var/task
ENV LAMBDA_RUNTIME_DIR=/var/runtime

WORKDIR /var/task

ENTRYPOINT ["/lambda-entrypoint.sh"]
