FROM scratch

ADD 009539361a295dd01be7879098372089a1450e6cbd2c4d80c47d9bcc2afacd5f.tar.xz /
ADD 0cff4522f1fdc4b0571ca2d14a6c52525bcfa8de71caedcf5b9a45a3696d279e.tar.xz /
ADD 5cd274df85ab247d7f491aebd2799df31032abcf55a100d04157516f5a9b0a39.tar.xz /
ADD 64b55ef6a4a0ade6cc041c28d71903449e7b28f5cef1ff5447940e15cb4d2633.tar.xz /
ADD b2eceaa8044f2706082143bf8ca7ed382def8c4cdd252685f065d7304ef3dead.tar.xz /
ADD cce0bc9fc2322eebf7fb422d82809e25d129077164f1f38c935c2bdbcc56a661.tar.xz /

ENV LANG=en_US.UTF-8
ENV TZ=:/etc/localtime
ENV PATH=/var/lang/bin:/usr/local/bin:/usr/bin/:/bin:/opt/bin
ENV LD_LIBRARY_PATH=/var/lang/lib:/lib64:/usr/lib64:/var/runtime:/var/runtime/lib:/var/task:/var/task/lib:/opt/lib
ENV LAMBDA_TASK_ROOT=/var/task
ENV LAMBDA_RUNTIME_DIR=/var/runtime

WORKDIR /var/task

ENTRYPOINT ["/lambda-entrypoint.sh"]
