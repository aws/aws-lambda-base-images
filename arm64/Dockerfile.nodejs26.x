FROM scratch

ADD 2873f9c5a53426ddad8247a1dc74768c01ba136ff09cb5126b78c1b07b877c19.tar.xz /
ADD 2a33826a7f7a4dea1cd2b7aed46c932eebffa00a02f5829caeef68bfd4360cdb.tar.xz /
ADD 6c8dbf5a822a154998710a8904c39d2e9116249efbeb434487804a34429ddcf4.tar.xz /
ADD 94d812b4b4f7914b0e4d16ac9cc85e71daeeee6e3b8d5a25c3be935d9d67ce85.tar.xz /
ADD d2492677332cfd4fbbaaa3d6cea1a3ab5664298c6648a1a394b9d82d8c7ed502.tar.xz /
ADD f40c13a75450c71d0b94363a6fc6635a174175680977187dec04929472ad5717.tar.xz /

ENV LANG=en_US.UTF-8
ENV TZ=:/etc/localtime
ENV PATH=/var/lang/bin:/usr/local/bin:/usr/bin/:/bin:/opt/bin
ENV LD_LIBRARY_PATH=/var/lang/lib:/lib64:/usr/lib64:/var/runtime:/var/runtime/lib:/var/task:/var/task/lib:/opt/lib
ENV LAMBDA_TASK_ROOT=/var/task
ENV LAMBDA_RUNTIME_DIR=/var/runtime

WORKDIR /var/task

ENTRYPOINT ["/lambda-entrypoint.sh"]
