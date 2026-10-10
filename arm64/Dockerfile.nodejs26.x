FROM scratch

ADD 3c074571d71946d746c2b007b944d7f698481a8a5bc478c5f574d7ba1672cb38.tar.xz /
ADD 48db857d4f86a663c0e04855f5c46c7eea5529db22155e80f80208444c5a3e26.tar.xz /
ADD 49e2a23080c25e1198b3cfeba363ed9114cf9d061200ec803ed4094c77cea007.tar.xz /
ADD 6ea33fc1eefb34f1d399313e9b754911d91648cfd2c6c31a25ba73f08d53d617.tar.xz /
ADD 871efdf23a413459291351c229d442b38fbd88b5d337401abdc05897f4365c31.tar.xz /
ADD 94d812b4b4f7914b0e4d16ac9cc85e71daeeee6e3b8d5a25c3be935d9d67ce85.tar.xz /

ENV LANG=en_US.UTF-8
ENV TZ=:/etc/localtime
ENV PATH=/var/lang/bin:/usr/local/bin:/usr/bin/:/bin:/opt/bin
ENV LD_LIBRARY_PATH=/var/lang/lib:/lib64:/usr/lib64:/var/runtime:/var/runtime/lib:/var/task:/var/task/lib:/opt/lib
ENV LAMBDA_TASK_ROOT=/var/task
ENV LAMBDA_RUNTIME_DIR=/var/runtime

WORKDIR /var/task

ENTRYPOINT ["/lambda-entrypoint.sh"]
