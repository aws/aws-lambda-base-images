FROM scratch

ADD 9923ae2b70d569fcd832acf34794ad5b564165e29949fc7aca521d2370a4a4d2.tar.xz /
ADD 9d1808fff1536f8269d8d405e128b83d9930626f2f9582273f0cfa74deee66e2.tar.xz /
ADD a435ec490cc3541ca85c3a7378871067148c46aec3945690cbf2fe102a2624ae.tar.xz /
ADD c3bc3149ba3e75d84471030a95c5fa5f1072c2b353cbcff4a3b286386dfcf634.tar.xz /
ADD d33f0513997ec623cf2a75f185bf1020ae9aef8b0466cdbc3586198acf930afc.tar.xz /
ADD d7bdb6189e1a2e5d09c1f4469955117f1dc321433423fa7f862a037ec3266cd6.tar.xz /

ENV LANG=en_US.UTF-8
ENV TZ=:/etc/localtime
ENV PATH=/var/lang/bin:/usr/local/bin:/usr/bin/:/bin:/opt/bin
ENV LD_LIBRARY_PATH=/var/lang/lib:/lib64:/usr/lib64:/var/runtime:/var/runtime/lib:/var/task:/var/task/lib:/opt/lib
ENV LAMBDA_TASK_ROOT=/var/task
ENV LAMBDA_RUNTIME_DIR=/var/runtime

WORKDIR /var/task

ENTRYPOINT ["/lambda-entrypoint.sh"]
