FROM scratch

ADD 14b56a09ea100de3b6d3871573a777df7206f251033aae6b471c779146f8bb9e.tar.xz /
ADD 5638ce1d76cef9e677a8323fd7d10ee8b5ac3e9a0918de89cf9c8efb9b0fe4b9.tar.xz /
ADD 875c45df2462d69d85f5f12f29c61640fcd4a36fcfd03895432d095eebb68497.tar.xz /
ADD b1b9ab7dd5899196873980d8ed0e6ab2182bbb362233977106a10023115aeb47.tar.xz /
ADD b98ba95442c116548b8c97d840aaaf0d84324d0799b080607cdb7d5d07d491aa.tar.xz /
ADD ff1b37ce8ece67ff0ed6f8fa4edd26e4680b09edcab2681699ca239b525d3983.tar.xz /

ENV LANG=en_US.UTF-8
ENV TZ=:/etc/localtime
ENV PATH=/var/lang/bin:/usr/local/bin:/usr/bin/:/bin:/opt/bin
ENV LD_LIBRARY_PATH=/var/lang/lib:/lib64:/usr/lib64:/var/runtime:/var/runtime/lib:/var/task:/var/task/lib:/opt/lib
ENV LAMBDA_TASK_ROOT=/var/task
ENV LAMBDA_RUNTIME_DIR=/var/runtime

WORKDIR /var/task

ENTRYPOINT ["/lambda-entrypoint.sh"]
