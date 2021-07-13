FROM scratch

ADD 1bbb05a2a60b518c6e949027d6d25670c6172ff4fb0d7875fe60004d0356b021.tar.xz /
ADD 25620c53a6cac68b68fea6bc99198bc8f6fa3f485684fb6d72bf5714e8b03743.tar.xz /
ADD 31db93da53e1e37020af546ed1eb47aebaf08e1a0e8f9f8daf529cdf3bd1123e.tar.xz /
ADD 3c022520ee0abaf22ca93a9e12ad8bd926b1862551553eed5a9267d44a7a947a.tar.xz /
ADD 50a48f0b1b4113c949ea6671a4c40884610b53e9be7299442dcd875e2b697ac3.tar.xz /
ADD a91de02895c959ceea62ae1f0f19385121d08cd3b1e92a1978a93dda0352587d.tar.xz /
ADD b49c7d01f7451b9eb34f1a35634c89084c77043fe98b4edbc003b2d75c50ede0.tar.xz /

ENV LANG=en_US.UTF-8
ENV TZ=:/etc/localtime
ENV PATH=/var/lang/bin:/usr/local/bin:/usr/bin/:/bin:/opt/bin
ENV LD_LIBRARY_PATH=/var/lang/lib:/lib64:/usr/lib64:/var/runtime:/var/runtime/lib:/var/task:/var/task/lib:/opt/lib
ENV LAMBDA_TASK_ROOT=/var/task
ENV LAMBDA_RUNTIME_DIR=/var/runtime

WORKDIR /var/task

ENTRYPOINT ["/lambda-entrypoint.sh"]

