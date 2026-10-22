FROM scratch

ADD 2819c392f1121d04847ccacbd157759220a5da3de8020ced05267080eb33ba4f.tar.xz /
ADD 2d28520eea45a315cb1ad25be3c745556fd9eb4a3d89eca286e4b09ecb756b31.tar.xz /
ADD 8cd2d6aaf42fee5c34a508804fa6aea95b8b84957ce466b38bb56ad26368aec3.tar.xz /
ADD 94d812b4b4f7914b0e4d16ac9cc85e71daeeee6e3b8d5a25c3be935d9d67ce85.tar.xz /
ADD edbe4389640122a1aee595f09963e9667333f3334cfb83c3f0eab5169f1e8fc9.tar.xz /
ADD fb4f8592e20b3b579e586f94fa61f2d785406bf1912a38e6cb98668500979c9e.tar.xz /

ENV LANG=en_US.UTF-8
ENV TZ=:/etc/localtime
ENV PATH=/var/lang/bin:/usr/local/bin:/usr/bin/:/bin:/opt/bin
ENV LD_LIBRARY_PATH=/var/lang/lib:/lib64:/usr/lib64:/var/runtime:/var/runtime/lib:/var/task:/var/task/lib:/opt/lib
ENV LAMBDA_TASK_ROOT=/var/task
ENV LAMBDA_RUNTIME_DIR=/var/runtime

WORKDIR /var/task

ENTRYPOINT ["/lambda-entrypoint.sh"]
