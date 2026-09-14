FROM scratch

ADD 3cec332f35b85bd3b4d1bbd2100bfe01ccf49376e8a69c2a29acad4497571ec7.tar.xz /
ADD 3f7eb425fde9868f678e4b56fb8b7b23b8c539610757200ac99f3d2fc0df276f.tar.xz /
ADD 725e91166cfddce16b180888b45f6256a8cca60537c4503930ab4cf8a8efab55.tar.xz /
ADD 83af09b430aa6863d417de7bd42584f897ab2c08e34e2899dbef07487f0faa3b.tar.xz /
ADD b868d4d1f41933453c902cf6e5eaea2d99c9dc2a927554f7fe32e4a1d21bbb7b.tar.xz /
ADD fee23627b54064dfca990bffb40a4ab006fe354db3619b001964885b3f9db72b.tar.xz /

ENV LANG=en_US.UTF-8
ENV TZ=:/etc/localtime
ENV PATH=/var/lang/bin:/usr/local/bin:/usr/bin/:/bin:/opt/bin
ENV LD_LIBRARY_PATH=/var/lang/lib:/lib64:/usr/lib64:/var/runtime:/var/runtime/lib:/var/task:/var/task/lib:/opt/lib
ENV LAMBDA_TASK_ROOT=/var/task
ENV LAMBDA_RUNTIME_DIR=/var/runtime

WORKDIR /var/task

ENTRYPOINT ["/lambda-entrypoint.sh"]
