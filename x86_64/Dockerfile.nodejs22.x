FROM scratch

ADD 352f5e5befe5b13f16e8ab0483327eda903f6391954a263e9657408bf10a7399.tar.xz /
ADD 35b9d24de999f9698ff43d59948f15403388da98972e710ea636db353e084147.tar.xz /
ADD 6054ee596efdb7845dbc8be97505082f489db1eebcb742fc9201ddc1f3be7a57.tar.xz /
ADD 85864979f6cac152a34e0632dfe52c6420e89b573ad368395e74640882dd8459.tar.xz /
ADD b59e287a78d4b9673972dec57cc1f10ddbfe2b8f20927438b4c458fa598bc787.tar.xz /
ADD c914f08cd9bffb606b199952fa0fb3a3a049c9a14c4c392ddba9d9f9cca1147d.tar.xz /

ENV LANG=en_US.UTF-8
ENV TZ=:/etc/localtime
ENV PATH=/var/lang/bin:/usr/local/bin:/usr/bin/:/bin:/opt/bin
ENV LD_LIBRARY_PATH=/var/lang/lib:/lib64:/usr/lib64:/var/runtime:/var/runtime/lib:/var/task:/var/task/lib:/opt/lib
ENV LAMBDA_TASK_ROOT=/var/task
ENV LAMBDA_RUNTIME_DIR=/var/runtime

WORKDIR /var/task

ENTRYPOINT ["/lambda-entrypoint.sh"]
