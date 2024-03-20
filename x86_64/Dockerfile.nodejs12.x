FROM scratch

ADD 160ce93213bee961fa145d7d60e4835547a6fbabac1d00474c6528a55f568c80.tar.xz /
ADD 1fb36a32e7730b53aef1bdd13359db59ef92be01f3a969f2c7210bc39ad46122.tar.xz /
ADD 43d617184d7b7f683ea6d9bdf1f0b7b3246bf2b62b932296b969f4fae1c67aa9.tar.xz /
ADD 71437cefc7a852e4c2a560dea4804b4bc8bd844b97b56d15167b9fd8698a7ae9.tar.xz /
ADD a6e1974564ccca531a7b53affb47f363fb269d349b0aa137ebc98a169e01be15.tar.xz /
ADD c3bc3149ba3e75d84471030a95c5fa5f1072c2b353cbcff4a3b286386dfcf634.tar.xz /

ENV LANG=en_US.UTF-8
ENV TZ=:/etc/localtime
ENV PATH=/var/lang/bin:/usr/local/bin:/usr/bin/:/bin:/opt/bin
ENV LD_LIBRARY_PATH=/var/lang/lib:/lib64:/usr/lib64:/var/runtime:/var/runtime/lib:/var/task:/var/task/lib:/opt/lib
ENV LAMBDA_TASK_ROOT=/var/task
ENV LAMBDA_RUNTIME_DIR=/var/runtime

WORKDIR /var/task

ENTRYPOINT ["/lambda-entrypoint.sh"]
