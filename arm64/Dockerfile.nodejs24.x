FROM scratch

ADD 14bf4f182990797156b967935e695a1d9a6a65d901387ea7cc6dc5e1003f9806.tar.xz /
ADD 29214408a60439f79a578ce54eff9831e06994c9bbf4ecd54f5ed2372c4880f5.tar.xz /
ADD 4068874744ea7bf3ffb46862fd6e645c4316fba7d034e07372b5f6265b837f2b.tar.xz /
ADD 74af4455096c5734deb5cd6fb1dd351990435f431159eae5e97d708f3f5c5b55.tar.xz /
ADD 8e448ada5d486dadf07cdae505c95d60eb9ab7462e9f39aed58d7d194248d764.tar.xz /
ADD cf044ed97826b7fab0f050bbe13602617289648be1742d411765f3258dda394e.tar.xz /

ENV LANG=en_US.UTF-8
ENV TZ=:/etc/localtime
ENV PATH=/var/lang/bin:/usr/local/bin:/usr/bin/:/bin:/opt/bin
ENV LD_LIBRARY_PATH=/var/lang/lib:/lib64:/usr/lib64:/var/runtime:/var/runtime/lib:/var/task:/var/task/lib:/opt/lib
ENV LAMBDA_TASK_ROOT=/var/task
ENV LAMBDA_RUNTIME_DIR=/var/runtime

WORKDIR /var/task

ENTRYPOINT ["/lambda-entrypoint.sh"]
