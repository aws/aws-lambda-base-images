FROM scratch

ADD 01bd7afa663e9e91e5d3cd5cefb4e1077ef492730d5ebdc8e521b35f663d6f88.tar.xz /
ADD 4ef895c1f55ca6040265c3ea5aacfb5e601a0b3e0f4845ebbf1130ac5f091a64.tar.xz /
ADD 78fdbafde9e51aea04f08a21ffd43f80c5f7eb147c2d5abc285380aeb5e4ed02.tar.xz /
ADD 94d812b4b4f7914b0e4d16ac9cc85e71daeeee6e3b8d5a25c3be935d9d67ce85.tar.xz /
ADD b8904d39d36fbf8363ed5ea113c5c1d514ba07512f3a455e4ec74efbe35b7297.tar.xz /
ADD fd3afbd6a6e0aa6ce4c9b482fb5e40fd009271cb1c00401ef9147cd677cc6506.tar.xz /

ENV LANG=en_US.UTF-8
ENV TZ=:/etc/localtime
ENV PATH=/var/lang/bin:/usr/local/bin:/usr/bin/:/bin:/opt/bin
ENV LD_LIBRARY_PATH=/var/lang/lib:/lib64:/usr/lib64:/var/runtime:/var/runtime/lib:/var/task:/var/task/lib:/opt/lib
ENV LAMBDA_TASK_ROOT=/var/task
ENV LAMBDA_RUNTIME_DIR=/var/runtime

WORKDIR /var/task

ENTRYPOINT ["/lambda-entrypoint.sh"]
