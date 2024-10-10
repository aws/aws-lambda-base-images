FROM scratch

ADD 28efa7e79e3bebc880c5ec2f1d0966e6265d2e5098d4e6c009309d0c9daa6524.tar.xz /
ADD 4692c0ffb515adbefd16869d52b6c51de28debb2832d7610b8a8f37ab39076fb.tar.xz /
ADD 712cfea6011ef635f76fb8d0a60e7339f922178098c7690b71f26a6e30a897b4.tar.xz /
ADD 7ae12cc0925bfc61647a35051056d660ecb39dd68a6ab100587e43a92212e20f.tar.xz /
ADD 94f8fc86e07880f79e6d6295bcb038b556b5a6dad8d2e765cec384756670e4c1.tar.xz /
ADD fb18c72d15eddf0177a7c7e5ca11d37e89371e3a9d3fda2e9df3a0ca116cae64.tar.xz /

ENV LANG=en_US.UTF-8
ENV TZ=:/etc/localtime
ENV PATH=/var/lang/bin:/usr/local/bin:/usr/bin/:/bin:/opt/bin
ENV LD_LIBRARY_PATH=/var/lang/lib:/lib64:/usr/lib64:/var/runtime:/var/runtime/lib:/var/task:/var/task/lib:/opt/lib
ENV LAMBDA_TASK_ROOT=/var/task
ENV LAMBDA_RUNTIME_DIR=/var/runtime

WORKDIR /var/task

ENTRYPOINT ["/lambda-entrypoint.sh"]
