FROM scratch

ADD 19ec1cdbfb680c14911e6122e1631276aee9280077e84e5c458adeead6d7c537.tar.xz /
ADD 36661b6fc131f3e9da817aba346c8a0dc2f8f2e37a2aecaeede0c061ad18ca4b.tar.xz /
ADD 6dc94dd81274f13c9473dd1cdae63e75840e4016d35ba89e3b693e5b49e26f02.tar.xz /
ADD 7855595215e3e4ec936f28ac6d3ded613464709a3da2c1b5cb6aab68a7a1a4e0.tar.xz /
ADD c3bc3149ba3e75d84471030a95c5fa5f1072c2b353cbcff4a3b286386dfcf634.tar.xz /
ADD f7ce5daa8e6b83218315a43da67b6e4631861349d4c97ef6cb2fa9fb389bf1ea.tar.xz /

ENV LANG=en_US.UTF-8
ENV TZ=:/etc/localtime
ENV PATH=/var/lang/bin:/usr/local/bin:/usr/bin/:/bin:/opt/bin
ENV LD_LIBRARY_PATH=/var/lang/lib:/lib64:/usr/lib64:/var/runtime:/var/runtime/lib:/var/task:/var/task/lib:/opt/lib
ENV LAMBDA_TASK_ROOT=/var/task
ENV LAMBDA_RUNTIME_DIR=/var/runtime

WORKDIR /var/task

ENTRYPOINT ["/lambda-entrypoint.sh"]
