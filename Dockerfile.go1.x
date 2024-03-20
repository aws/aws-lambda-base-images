FROM scratch

ADD 1182a3cd30c859f6044358568b3e0be160e30d71406c0a31f37a292fa479958d.tar.xz /
ADD 55a23498633810426ad07ceea0238148b9981758253c0cbee1a4e297acb0bef5.tar.xz /
ADD 8fa6e620268ab56d0718e4079052227eb3a5e887f1c429fb75a88ed5c04f6659.tar.xz /
ADD c3e42eaad06779be8f991368b6a9eeda0c75984bec57eb525c5db3e61a9fb57e.tar.xz /
ADD edad2a519a418ee2897936db7d5668a597b2f15dee1f418c384fa510fe6f06be.tar.xz /

ENV LANG=en_US.UTF-8
ENV TZ=:/etc/localtime
ENV PATH=/var/lang/bin:/usr/local/bin:/usr/bin/:/bin:/opt/bin
ENV LD_LIBRARY_PATH=/var/lang/lib:/lib64:/usr/lib64:/var/runtime:/var/runtime/lib:/var/task:/var/task/lib:/opt/lib
ENV LAMBDA_TASK_ROOT=/var/task
ENV LAMBDA_RUNTIME_DIR=/var/runtime

WORKDIR /var/task

ENTRYPOINT ["/lambda-entrypoint.sh"]
