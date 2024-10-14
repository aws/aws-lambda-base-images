FROM scratch
ADD x86_64/0cff4522f1fdc4b0571ca2d14a6c52525bcfa8de71caedcf5b9a45a3696d279e.tar.xz /
ADD x86_64/6eaf2d867d5c14dd06662073579ad34a8f03aae5c9fcb8d16b25a01bcdf8037c.tar.xz /
ADD x86_64/78050dad8ecc08af9c4d64b93c2768381a2a480a484cb8ccdce5c2852b7fdc80.tar.xz /
ADD x86_64/7fc6be7f0b14d910c12df955789b2841c4efc2496413cbb624b9f0a255c2920b.tar.xz /
ADD x86_64/ceff9330a1030dd8fbcacb1339765ea854971f0d5c47a6f070ab1ad044ba955b.tar.xz /
ADD x86_64/d1824fba07f2196159c533cedcf7ce57e559a239cdec3f565c05751f1da5133c.tar.xz /

ENV LANG=en_US.UTF-8
ENV TZ=:/etc/localtime
ENV PATH=/var/lang/bin:/usr/local/bin:/usr/bin/:/bin:/opt/bin
ENV LD_LIBRARY_PATH=/var/lang/lib:/lib64:/usr/lib64:/var/runtime:/var/runtime/lib:/var/task:/var/task/lib:/opt/lib
ENV LAMBDA_TASK_ROOT=/var/task
ENV LAMBDA_RUNTIME_DIR=/var/runtime

WORKDIR /var/task

ENTRYPOINT ["/lambda-entrypoint.sh"]
