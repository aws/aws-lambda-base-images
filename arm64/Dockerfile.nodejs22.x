FROM scratch

ADD 050fb1ad66b1dac75c7134bfd84caaa058fd8b6d0013706bfde90386ed4a985a.tar.xz /
ADD 4199dcf8083b558d75d01fc25deb26abf8ceb3b60802dbd7a1a8b6f3266cf3c7.tar.xz /
ADD 82f991c4a0d13b5c05796d061b90ba4dca24b31e29e6147d7bd123ef0edd229f.tar.xz /
ADD 9048c8919c93315cd89d68b60d854b5ae8750b7f6c966759ebc170c82d95992d.tar.xz /
ADD af3b3a5c0818613b3eed1988c130e68bb6d35806783fb23b70a6393337af1321.tar.xz /
ADD f3fbe89ebfc5c86b3f5ef2a4995ebed105d9b2bf16de23e9a590b385121512ca.tar.xz /

ENV LANG=en_US.UTF-8
ENV TZ=:/etc/localtime
ENV PATH=/var/lang/bin:/usr/local/bin:/usr/bin/:/bin:/opt/bin
ENV LD_LIBRARY_PATH=/var/lang/lib:/lib64:/usr/lib64:/var/runtime:/var/runtime/lib:/var/task:/var/task/lib:/opt/lib
ENV LAMBDA_TASK_ROOT=/var/task
ENV LAMBDA_RUNTIME_DIR=/var/runtime

WORKDIR /var/task

ENTRYPOINT ["/lambda-entrypoint.sh"]
