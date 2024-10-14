FROM scratch

ADD 0d19ac8d2ccaa5688fe727269ce7c603c8dfbe3bbcd0070be55771c78e8c5898.tar.xz /
ADD 134cab15e64a106e9250d4174b782d72b0f05c89a3289cc5c020b9f6c2ef04a4.tar.xz /
ADD 339469114b263d8761fe90289674fcfcf8b3c77b020b141584c71a7ab9703e7e.tar.xz /
ADD 4e71132006e1d2a3521c4bd2ff24ba742b72157d8111191ff85d1db330175e6c.tar.xz /
ADD f1b02375a08de777f9c0a20c4d3b976f5a06affa30ae7c41de29dd6eff003bb3.tar.xz /
ADD fb18c72d15eddf0177a7c7e5ca11d37e89371e3a9d3fda2e9df3a0ca116cae64.tar.xz /

ENV LANG=en_US.UTF-8
ENV TZ=:/etc/localtime
ENV PATH=/var/lang/bin:/usr/local/bin:/usr/bin/:/bin:/opt/bin
ENV LD_LIBRARY_PATH=/var/lang/lib:/lib64:/usr/lib64:/var/runtime:/var/runtime/lib:/var/task:/var/task/lib:/opt/lib
ENV LAMBDA_TASK_ROOT=/var/task
ENV LAMBDA_RUNTIME_DIR=/var/runtime

WORKDIR /var/task

ENTRYPOINT ["/lambda-entrypoint.sh"]
