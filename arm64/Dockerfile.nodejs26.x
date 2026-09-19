FROM scratch

ADD 4ed231bd3ad01f2ee7b25c3842ddbc52226401cd6b8d6340dad6556f048d54cd.tar.xz /
ADD 747016b307964281927c723c36023e63cf76147d2a807ba224e2143160774525.tar.xz /
ADD 94d812b4b4f7914b0e4d16ac9cc85e71daeeee6e3b8d5a25c3be935d9d67ce85.tar.xz /
ADD 95ef08cab644cd9c83119886165d95b03e1c3db6b9027197e4a0fed164563773.tar.xz /
ADD ca5bf28a2730673feb866a9f72fef4908c1508b3bc360f50e1b3471f0c049817.tar.xz /
ADD d1af82c0a152ed80fcf63af921fd06fc465508f28ff9ad6e08bb6b227ba13488.tar.xz /

ENV LANG=en_US.UTF-8
ENV TZ=:/etc/localtime
ENV PATH=/var/lang/bin:/usr/local/bin:/usr/bin/:/bin:/opt/bin
ENV LD_LIBRARY_PATH=/var/lang/lib:/lib64:/usr/lib64:/var/runtime:/var/runtime/lib:/var/task:/var/task/lib:/opt/lib
ENV LAMBDA_TASK_ROOT=/var/task
ENV LAMBDA_RUNTIME_DIR=/var/runtime

WORKDIR /var/task

ENTRYPOINT ["/lambda-entrypoint.sh"]
