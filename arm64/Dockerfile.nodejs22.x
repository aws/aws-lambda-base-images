FROM scratch

ADD 829f4199c6b44ead0fbe1916ab89de80111452cdc5a53936cb290d1bffedb6d8.tar.xz /
ADD 9169f204eaf765a86f9e82f973dd67f3e02e82e80dbedb4e284fe95e31f2be2c.tar.xz /
ADD ccaed87a3334c83ef1c7451cadc5bb29d5e6e0b301b5cc5a48621dbec9c17c8d.tar.xz /
ADD eea79957023a809eb237ac999af9157931340085d52fd7b859452b64dbce44d6.tar.xz /
ADD f8d0beaeeb623acc85c55242f9680d8e1dbefa6fd68b6da121b49e0d513f1e16.tar.xz /
ADD f9773e2e4c5537104467168b1b1579b6657b4e8524b037e24704f12b80fc9049.tar.xz /

ENV LANG=en_US.UTF-8
ENV TZ=:/etc/localtime
ENV PATH=/var/lang/bin:/usr/local/bin:/usr/bin/:/bin:/opt/bin
ENV LD_LIBRARY_PATH=/var/lang/lib:/lib64:/usr/lib64:/var/runtime:/var/runtime/lib:/var/task:/var/task/lib:/opt/lib
ENV LAMBDA_TASK_ROOT=/var/task
ENV LAMBDA_RUNTIME_DIR=/var/runtime

WORKDIR /var/task

ENTRYPOINT ["/lambda-entrypoint.sh"]
