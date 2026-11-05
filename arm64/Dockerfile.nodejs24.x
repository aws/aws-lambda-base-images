FROM scratch

ADD 14bf4f182990797156b967935e695a1d9a6a65d901387ea7cc6dc5e1003f9806.tar.xz /
ADD 46b8112547d947aa1be232e2249d1872cf3be97fb571469ac868fd9d8442e407.tar.xz /
ADD a40fbd95f91f0130e335e9450ef50e226d50771ea4bcd4b2b189110023c09301.tar.xz /
ADD dc6645c4df9def6886dd22a505db2ad98dc71754121f1ab9a43bbe9270326a27.tar.xz /
ADD e3153d0ae6d76cee7a101a50c09f228015ab62375b05732109f8f49e6db3be41.tar.xz /
ADD ef4fdb0bd581ab0ec1b5bdaaca81dc6c30dca1d2c5a8438150e22f113e6f645e.tar.xz /

ENV LANG=en_US.UTF-8
ENV TZ=:/etc/localtime
ENV PATH=/var/lang/bin:/usr/local/bin:/usr/bin/:/bin:/opt/bin
ENV LD_LIBRARY_PATH=/var/lang/lib:/lib64:/usr/lib64:/var/runtime:/var/runtime/lib:/var/task:/var/task/lib:/opt/lib
ENV LAMBDA_TASK_ROOT=/var/task
ENV LAMBDA_RUNTIME_DIR=/var/runtime

WORKDIR /var/task

ENTRYPOINT ["/lambda-entrypoint.sh"]
