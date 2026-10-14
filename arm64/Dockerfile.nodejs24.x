FROM scratch

ADD 341d4fd23063e5a1425a9418b6dab1629b767f836b9259326f443d4232c8a3c8.tar.xz /
ADD 75237dc8c6da04b5fbb63f070c04a09f51431817bd9f095f6d8c0712e059d8e8.tar.xz /
ADD 7d52823be6ee7bdbc03a7d197469265f4d0b35332dc14438f17034a2e7062a77.tar.xz /
ADD 830e51cb47d8ef6244d2628a79df4a92d7cb3736b0d82ad36a97c4b9042714f7.tar.xz /
ADD 94d812b4b4f7914b0e4d16ac9cc85e71daeeee6e3b8d5a25c3be935d9d67ce85.tar.xz /
ADD fc624856c770613e45a9c82d3c82ea32916ac830106e411e0567cfaf641deeb0.tar.xz /

ENV LANG=en_US.UTF-8
ENV TZ=:/etc/localtime
ENV PATH=/var/lang/bin:/usr/local/bin:/usr/bin/:/bin:/opt/bin
ENV LD_LIBRARY_PATH=/var/lang/lib:/lib64:/usr/lib64:/var/runtime:/var/runtime/lib:/var/task:/var/task/lib:/opt/lib
ENV LAMBDA_TASK_ROOT=/var/task
ENV LAMBDA_RUNTIME_DIR=/var/runtime

WORKDIR /var/task

ENTRYPOINT ["/lambda-entrypoint.sh"]
