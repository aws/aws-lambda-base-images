FROM scratch

ADD 2d65a0c100e127b889107c87e09713f52934179053f36c8f8023e8031ca8ce0c.tar.xz /
ADD 54b7d71a0ce9638d1361446fed709e7656a43615da7cc449efbc134bc648170f.tar.xz /
ADD 74f65d4d89d0775e75e60f393d57475417c3d226f29cf434a7915613b259dbfc.tar.xz /
ADD e626a5f218e5fcc97b95c77a7fc14b6c76c3378fe5725b0af4e7b7d50903ec4b.tar.xz /
ADD ed043573983ee0b79b7ab8c20f6f2fd87cbd37e53022926be6e27724cd6dc28a.tar.xz /
ADD f8d0beaeeb623acc85c55242f9680d8e1dbefa6fd68b6da121b49e0d513f1e16.tar.xz /

ENV LANG=en_US.UTF-8
ENV TZ=:/etc/localtime
ENV PATH=/var/lang/bin:/usr/local/bin:/usr/bin/:/bin:/opt/bin
ENV LD_LIBRARY_PATH=/var/lang/lib:/lib64:/usr/lib64:/var/runtime:/var/runtime/lib:/var/task:/var/task/lib:/opt/lib
ENV LAMBDA_TASK_ROOT=/var/task
ENV LAMBDA_RUNTIME_DIR=/var/runtime

WORKDIR /var/task

ENTRYPOINT ["/lambda-entrypoint.sh"]
