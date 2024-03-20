FROM scratch

ADD 27061676c9af6b023ec97f2df2ce0594deb8ad5aebf828cc41dc2e4f778cdae8.tar.xz /
ADD 7001f622c95e65a0c63bc540326c3610be76d178ae1e547fe45cdd760be377b1.tar.xz /
ADD 7a68b1efffd913b56f0198b537ba9e3cf3025796e13b1873a6e0d7370331db72.tar.xz /
ADD b1a898282698da84ec708be0495c7033ac3bf3de256be919c7558746b5843da3.tar.xz /
ADD e8a65d48c8aabb0774fda0d1f060f33a83ef30f6ffa0112b37b6dc8961b36759.tar.xz /
ADD eb9f9aec1784a8788bb1181b539aa381c450975d9b37d71fdc7ddeb9839ccfc8.tar.xz /

ENV LANG=en_US.UTF-8
ENV TZ=:/etc/localtime
ENV PATH=/var/lang/bin:/usr/local/bin:/usr/bin/:/bin:/opt/bin
ENV LD_LIBRARY_PATH=/var/lang/lib:/lib64:/usr/lib64:/var/runtime:/var/runtime/lib:/var/task:/var/task/lib:/opt/lib
ENV LAMBDA_TASK_ROOT=/var/task
ENV LAMBDA_RUNTIME_DIR=/var/runtime

WORKDIR /var/task

ENTRYPOINT ["/lambda-entrypoint.sh"]
