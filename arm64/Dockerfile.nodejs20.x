FROM scratch

ADD 17ee1f27cb8e3b03f4a61580476ec008f6b2cea415257dc75d49e03b95be02f2.tar.xz /
ADD 2ab9bad26dab46e775f5d9e0af925679970c58e2f7ffa1bc81413670a69e1b27.tar.xz /
ADD 3642edea0c88bbc808c03081da4952ab5ca55f1065e65d5ed5a7870a8722215c.tar.xz /
ADD 729303e5866b5dbcade5fc6dbadc574188bc7f558fdb40b7af3a311475596989.tar.xz /
ADD b1f1fb9a5cf73f9fa4eba224eeebfe29c9c85bdfd3e8405a118bc4d66f4ddf75.tar.xz /
ADD eb19d046b7e300fc18887253a34e07070c929874ad9b418a837f6ae92fd4dc22.tar.xz /

ENV LANG=en_US.UTF-8
ENV TZ=:/etc/localtime
ENV PATH=/var/lang/bin:/usr/local/bin:/usr/bin/:/bin:/opt/bin
ENV LD_LIBRARY_PATH=/var/lang/lib:/lib64:/usr/lib64:/var/runtime:/var/runtime/lib:/var/task:/var/task/lib:/opt/lib
ENV LAMBDA_TASK_ROOT=/var/task
ENV LAMBDA_RUNTIME_DIR=/var/runtime

WORKDIR /var/task

ENTRYPOINT ["/lambda-entrypoint.sh"]
