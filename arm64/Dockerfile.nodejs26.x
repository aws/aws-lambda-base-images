FROM scratch

ADD 020c81a65f63bc5e566334f0dbf067457b8e6f86280684203cbfb73b7ea36df3.tar.xz /
ADD 3d687b969a0e5016fa78ee96dc39242888a2b93f7bcdc00f6450651bb8a92e24.tar.xz /
ADD 94d812b4b4f7914b0e4d16ac9cc85e71daeeee6e3b8d5a25c3be935d9d67ce85.tar.xz /
ADD 9f2e3c1cd125da29838499b31a19a736e999fcefa137820af2006cf91f3c6bf4.tar.xz /
ADD dcb23017655c799a35830df98e2132bb2a34ca765e395c984f779cbf36f5fa31.tar.xz /
ADD ed7b22d0ed380717c0ca4e29a33477cb37fc41e7728b823887e5f53f6075b21d.tar.xz /

ENV LANG=en_US.UTF-8
ENV TZ=:/etc/localtime
ENV PATH=/var/lang/bin:/usr/local/bin:/usr/bin/:/bin:/opt/bin
ENV LD_LIBRARY_PATH=/var/lang/lib:/lib64:/usr/lib64:/var/runtime:/var/runtime/lib:/var/task:/var/task/lib:/opt/lib
ENV LAMBDA_TASK_ROOT=/var/task
ENV LAMBDA_RUNTIME_DIR=/var/runtime

WORKDIR /var/task

ENTRYPOINT ["/lambda-entrypoint.sh"]
