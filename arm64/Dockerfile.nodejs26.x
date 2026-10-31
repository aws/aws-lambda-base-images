FROM scratch

ADD 14bf4f182990797156b967935e695a1d9a6a65d901387ea7cc6dc5e1003f9806.tar.xz /
ADD 3285348073ab82e8c1ad2b272732866e74203f7c385a3898c71a9d5cffb343d6.tar.xz /
ADD 4368404fe9d05f8957b44ee16896ac80f5c352e41ee899692a0ddb8468086dc9.tar.xz /
ADD 6028a18bf37b6189fe85f5fffdba8b49ebb3df486f6710fe8ecd2599cb721fd0.tar.xz /
ADD a7f133c1021d84f4fe7e29c9401f4bfe14a68ba01d5e38cebaaa7bf91b347178.tar.xz /
ADD d3967e4b847c245856413a18f6057164137020a287e9a5106f3125cc4d1869c2.tar.xz /

ENV LANG=en_US.UTF-8
ENV TZ=:/etc/localtime
ENV PATH=/var/lang/bin:/usr/local/bin:/usr/bin/:/bin:/opt/bin
ENV LD_LIBRARY_PATH=/var/lang/lib:/lib64:/usr/lib64:/var/runtime:/var/runtime/lib:/var/task:/var/task/lib:/opt/lib
ENV LAMBDA_TASK_ROOT=/var/task
ENV LAMBDA_RUNTIME_DIR=/var/runtime

WORKDIR /var/task

ENTRYPOINT ["/lambda-entrypoint.sh"]
