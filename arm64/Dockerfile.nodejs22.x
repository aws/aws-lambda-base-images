FROM scratch

ADD 18aecf82613ac59c0574c75a47193d2234218fd5cf743115cbf63e008f52fc2a.tar.xz /
ADD 3c074571d71946d746c2b007b944d7f698481a8a5bc478c5f574d7ba1672cb38.tar.xz /
ADD 3cc11b67405d2d02640683bc5032803aad77872584cc9b1e4c4aad56e1384243.tar.xz /
ADD 48db857d4f86a663c0e04855f5c46c7eea5529db22155e80f80208444c5a3e26.tar.xz /
ADD 6ea33fc1eefb34f1d399313e9b754911d91648cfd2c6c31a25ba73f08d53d617.tar.xz /
ADD 94d812b4b4f7914b0e4d16ac9cc85e71daeeee6e3b8d5a25c3be935d9d67ce85.tar.xz /

ENV LANG=en_US.UTF-8
ENV TZ=:/etc/localtime
ENV PATH=/var/lang/bin:/usr/local/bin:/usr/bin/:/bin:/opt/bin
ENV LD_LIBRARY_PATH=/var/lang/lib:/lib64:/usr/lib64:/var/runtime:/var/runtime/lib:/var/task:/var/task/lib:/opt/lib
ENV LAMBDA_TASK_ROOT=/var/task
ENV LAMBDA_RUNTIME_DIR=/var/runtime

WORKDIR /var/task

ENTRYPOINT ["/lambda-entrypoint.sh"]
