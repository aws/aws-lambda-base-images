FROM scratch

ADD 150a6fcdfeae947ee57f0d4777b7326f151266f1164831d64810167027b04d43.tar.xz /
ADD 1fb8f4fe2049706f7f8767da1170d05e1a71a9fa2807ab41a176a7ed58c1ee2c.tar.xz /
ADD 5b1bbd0c45d0797ecb8c91408bc9116f2434dc43ba012ddad0d02782139f0971.tar.xz /
ADD 78bffcb2220430ea1d711da0078672b75861041dd4c1cd309a65a3e75c2faf09.tar.xz /
ADD a8ef64c83c1508bb7e81684454bd1680de6f1a4dd055956510715b21a5147bd8.tar.xz /
ADD c914f08cd9bffb606b199952fa0fb3a3a049c9a14c4c392ddba9d9f9cca1147d.tar.xz /

ENV LANG=en_US.UTF-8
ENV TZ=:/etc/localtime
ENV PATH=/var/lang/bin:/usr/local/bin:/usr/bin/:/bin:/opt/bin
ENV LD_LIBRARY_PATH=/var/lang/lib:/lib64:/usr/lib64:/var/runtime:/var/runtime/lib:/var/task:/var/task/lib:/opt/lib
ENV LAMBDA_TASK_ROOT=/var/task
ENV LAMBDA_RUNTIME_DIR=/var/runtime

WORKDIR /var/task

ENTRYPOINT ["/lambda-entrypoint.sh"]
