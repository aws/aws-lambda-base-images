FROM scratch

ADD 94697424c7ffc52539de506c85edde439e42bd5a088d16cb238cc46647ae58cb.tar.xz /
ADD a9bc162acdc73caea4ae6a7d2b4b618eaa0d81331a16e2e9c6c250d60a9cf4b4.tar.xz /
ADD bd6bbda806c2d41cff8270815af4f0746d70e0824db4960197c9a8d00a9d9d04.tar.xz /
ADD dda3bbf0960ed44aaf21b42308a673921d52ad9cd67b317221d227bba728d886.tar.xz /
ADD dff972041ef164254fba299dc2a7751c030e1b7ed122396b0948c8ccc07ebd69.tar.xz /
ADD e8a65d48c8aabb0774fda0d1f060f33a83ef30f6ffa0112b37b6dc8961b36759.tar.xz /

ENV LANG=en_US.UTF-8
ENV TZ=:/etc/localtime
ENV PATH=/var/lang/bin:/usr/local/bin:/usr/bin/:/bin:/opt/bin
ENV LD_LIBRARY_PATH=/var/lang/lib:/lib64:/usr/lib64:/var/runtime:/var/runtime/lib:/var/task:/var/task/lib:/opt/lib
ENV LAMBDA_TASK_ROOT=/var/task
ENV LAMBDA_RUNTIME_DIR=/var/runtime

WORKDIR /var/task

ENTRYPOINT ["/lambda-entrypoint.sh"]
