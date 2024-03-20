FROM scratch

ADD 0070c353524bc36ad0c77181a196f718c561712bebe043a9c549bb5b293fde25.tar.xz /
ADD 3da605c085d9f42f48a45dfcfb8fe4f6bcf63db596a726b8d386fa029ca1c834.tar.xz /
ADD 94add1b2f9b0699164b81ce3d339b0d37d7e81edc99c21e1e0609553ea21d6f9.tar.xz /
ADD 9e3283f9595dd2429b7b85545c9f8403c9cf843de550fd5fbb2969b1727ab3e8.tar.xz /
ADD c2575de0bcbaebe7a58b6b36c7715833fc021cf033a80ca161e7ebba3833d2cd.tar.xz /
ADD e8a65d48c8aabb0774fda0d1f060f33a83ef30f6ffa0112b37b6dc8961b36759.tar.xz /

ENV LANG=en_US.UTF-8
ENV TZ=:/etc/localtime
ENV PATH=/var/lang/bin:/usr/local/bin:/usr/bin/:/bin:/opt/bin
ENV LD_LIBRARY_PATH=/var/lang/lib:/lib64:/usr/lib64:/var/runtime:/var/runtime/lib:/var/task:/var/task/lib:/opt/lib
ENV LAMBDA_TASK_ROOT=/var/task
ENV LAMBDA_RUNTIME_DIR=/var/runtime

WORKDIR /var/task

ENTRYPOINT ["/lambda-entrypoint.sh"]
