FROM scratch

ADD 879ced306785e3a6ca1e9d1a357d7ed3562a29302368f2f334cd290bdbaa9a5b.tar.xz /
ADD a5b4fdf53e427cfce30af496c004f1784012661e0c4a5eca475aa94d8a573051.tar.xz /
ADD c68ec3369d4fa28f0b339583ce5fa0385caf657b65ff492fabba601d0713820e.tar.xz /
ADD c914f08cd9bffb606b199952fa0fb3a3a049c9a14c4c392ddba9d9f9cca1147d.tar.xz /
ADD e9f05220bb339909980340e55e42ecd664bb90c639bef2378cee6d65eb534957.tar.xz /
ADD f106f26a4a2f5d185b55e65cd66ea4936150f4fb1186197fa928f9884a891dcb.tar.xz /

ENV LANG=en_US.UTF-8
ENV TZ=:/etc/localtime
ENV PATH=/var/lang/bin:/usr/local/bin:/usr/bin/:/bin:/opt/bin
ENV LD_LIBRARY_PATH=/var/lang/lib:/lib64:/usr/lib64:/var/runtime:/var/runtime/lib:/var/task:/var/task/lib:/opt/lib
ENV LAMBDA_TASK_ROOT=/var/task
ENV LAMBDA_RUNTIME_DIR=/var/runtime

WORKDIR /var/task

ENTRYPOINT ["/lambda-entrypoint.sh"]
