FROM scratch

ADD 2b75ccc7deb71e37537b4ba9db214355d8b3ad5c081bc87a3ae03d6f5a5794a0.tar.xz /
ADD 5b83ef6d47ecf891040e2f875affc1a67ee8e474a2efa8366bb385cf06a8b04b.tar.xz /
ADD 6a7ef6c66a2cdc063ff450351445e37cf41a58e450aed2249460d86814537097.tar.xz /
ADD 6da4188a42d967c7edf03c9dc04888ddeb637bef28c9dda3fa8d34d0142b7333.tar.xz /
ADD 6e11171d986697be1cd184fe9583945fe7cdaa962d11070d370d022fdc0c58bd.tar.xz /
ADD 94d812b4b4f7914b0e4d16ac9cc85e71daeeee6e3b8d5a25c3be935d9d67ce85.tar.xz /

ENV LANG=en_US.UTF-8
ENV TZ=:/etc/localtime
ENV PATH=/var/lang/bin:/usr/local/bin:/usr/bin/:/bin:/opt/bin
ENV LD_LIBRARY_PATH=/var/lang/lib:/lib64:/usr/lib64:/var/runtime:/var/runtime/lib:/var/task:/var/task/lib:/opt/lib
ENV LAMBDA_TASK_ROOT=/var/task
ENV LAMBDA_RUNTIME_DIR=/var/runtime

WORKDIR /var/task

ENTRYPOINT ["/lambda-entrypoint.sh"]
