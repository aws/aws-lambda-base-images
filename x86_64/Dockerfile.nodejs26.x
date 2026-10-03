FROM scratch

ADD 3368ae0590be54638048afde0175d72fcca4a98769275c94594ac85824ef80d3.tar.xz /
ADD 46468076f7ca6fb007ba697841d26d635a5687fc875a1e2d0162a600375cd37d.tar.xz /
ADD 4911d39b4752ea1752fe7b19d1eeef7b298b38347cd2220854ba7ac7e265f330.tar.xz /
ADD 9db997b1c2b3871f3b4cd0a50c24194ef75ba7c8f7febdf51f31f89b5e458671.tar.xz /
ADD c521fe79092cd9f279072ef32ae3399cf5ec93d0c9d2eb5a4281b4f6ca5ec21f.tar.xz /
ADD c914f08cd9bffb606b199952fa0fb3a3a049c9a14c4c392ddba9d9f9cca1147d.tar.xz /

ENV LANG=en_US.UTF-8
ENV TZ=:/etc/localtime
ENV PATH=/var/lang/bin:/usr/local/bin:/usr/bin/:/bin:/opt/bin
ENV LD_LIBRARY_PATH=/var/lang/lib:/lib64:/usr/lib64:/var/runtime:/var/runtime/lib:/var/task:/var/task/lib:/opt/lib
ENV LAMBDA_TASK_ROOT=/var/task
ENV LAMBDA_RUNTIME_DIR=/var/runtime

WORKDIR /var/task

ENTRYPOINT ["/lambda-entrypoint.sh"]
