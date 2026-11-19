FROM scratch

ADD 1389040f50a90d7d9a1a48bd2d4f6f4ec09d3c216cb12adbfdca7b6fca4970cb.tar.xz /
ADD 4cf8bf4f2ba5aced364f27669d5e269436f7fcbd0ae2ab41c496e68b1e29ea67.tar.xz /
ADD 52ae917004622ac2238462b113f691200d7a94ee6f48789f4f5935c4a0461cba.tar.xz /
ADD 8495148db03dee358805086dc9d62785514fb9a9370cbfefbadedb87dd9579bd.tar.xz /
ADD c509dea89b373e33a7dc9483b43ebaf9661f8e5630c4041ff24e9c036d4a0120.tar.xz /
ADD f8d0beaeeb623acc85c55242f9680d8e1dbefa6fd68b6da121b49e0d513f1e16.tar.xz /

ENV LANG=en_US.UTF-8
ENV TZ=:/etc/localtime
ENV PATH=/var/lang/bin:/usr/local/bin:/usr/bin/:/bin:/opt/bin
ENV LD_LIBRARY_PATH=/var/lang/lib:/lib64:/usr/lib64:/var/runtime:/var/runtime/lib:/var/task:/var/task/lib:/opt/lib
ENV LAMBDA_TASK_ROOT=/var/task
ENV LAMBDA_RUNTIME_DIR=/var/runtime

WORKDIR /var/task

ENTRYPOINT ["/lambda-entrypoint.sh"]
