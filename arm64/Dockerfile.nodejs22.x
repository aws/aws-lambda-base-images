FROM scratch

ADD 14bf4f182990797156b967935e695a1d9a6a65d901387ea7cc6dc5e1003f9806.tar.xz /
ADD 56dafce95e9e0d9953120a3a9201ee33c72aa85649f020b51add171111700c71.tar.xz /
ADD 9b2efce8e0abecfb81932423c21c2630c3f7d63e0a65c6274c6faaab89ee3efb.tar.xz /
ADD cc54dbbd283e17ef4ce5bf469d72a12e8ea9dadd6e7871926c0fa505aebc29a9.tar.xz /
ADD dd175d4d768186f19c04825ad68662699e91035c756063836c3d8f843a97a880.tar.xz /
ADD eef5a8f7ad53f690acb1e5c15d6f73bafd27a61159e3a5f9a9c8e14cad890ca8.tar.xz /

ENV LANG=en_US.UTF-8
ENV TZ=:/etc/localtime
ENV PATH=/var/lang/bin:/usr/local/bin:/usr/bin/:/bin:/opt/bin
ENV LD_LIBRARY_PATH=/var/lang/lib:/lib64:/usr/lib64:/var/runtime:/var/runtime/lib:/var/task:/var/task/lib:/opt/lib
ENV LAMBDA_TASK_ROOT=/var/task
ENV LAMBDA_RUNTIME_DIR=/var/runtime

WORKDIR /var/task

ENTRYPOINT ["/lambda-entrypoint.sh"]
