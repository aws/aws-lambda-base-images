FROM scratch

ADD 024461475bae206552e80be98ce0602e172dfd8eaf1eb3324bda191729495f5f.tar.xz /
ADD 175513d73437337be2f732337e46255ab0e8cc9a05236b435bc02c61dfeb7ab5.tar.xz /
ADD 2661a9a9add41a552ca5106ec1e9cc2db22ed470c9051ead4fa579017e59fb85.tar.xz /
ADD 88cba4a2665a26f1789b7be9642484a8c899de2335b0b759d909a6c9b887886f.tar.xz /
ADD 94d812b4b4f7914b0e4d16ac9cc85e71daeeee6e3b8d5a25c3be935d9d67ce85.tar.xz /
ADD f9e22981e3d4ea4facd6a72608a06af3bd38c4c0415ff0d2e7a1080ec58551b2.tar.xz /

ENV LANG=en_US.UTF-8
ENV TZ=:/etc/localtime
ENV PATH=/var/lang/bin:/usr/local/bin:/usr/bin/:/bin:/opt/bin
ENV LD_LIBRARY_PATH=/var/lang/lib:/lib64:/usr/lib64:/var/runtime:/var/runtime/lib:/var/task:/var/task/lib:/opt/lib
ENV LAMBDA_TASK_ROOT=/var/task
ENV LAMBDA_RUNTIME_DIR=/var/runtime

WORKDIR /var/task

ENTRYPOINT ["/lambda-entrypoint.sh"]
