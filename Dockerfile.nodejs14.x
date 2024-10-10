FROM scratch
ADD x86_64/0cff4522f1fdc4b0571ca2d14a6c52525bcfa8de71caedcf5b9a45a3696d279e.tar.xz /
ADD x86_64/0d7bd105eb56f73268d7b911b5b10015d84e1aa27ec04f9042548c9fa549b47e.tar.xz /
ADD x86_64/5657e00840a35fbcad43f813bff1cd54300f4615b8bb2c51e575c56555dc2570.tar.xz /
ADD x86_64/b3c8b3c5c0943f783c0704460ca1749c30c3facfb5b3adfd5338cfc1e92af2d5.tar.xz /
ADD x86_64/d11521ee4cc5e0722e7aab5bd3e91289e33db5f03278e37c330bd8c498cce8d6.tar.xz /
ADD x86_64/fcf6a67f5fe7663f1a0db73587302256cf0dc7b6d716fd04da9918e6c21bc6db.tar.xz /

ENV LANG=en_US.UTF-8
ENV TZ=:/etc/localtime
ENV PATH=/var/lang/bin:/usr/local/bin:/usr/bin/:/bin:/opt/bin
ENV LD_LIBRARY_PATH=/var/lang/lib:/lib64:/usr/lib64:/var/runtime:/var/runtime/lib:/var/task:/var/task/lib:/opt/lib
ENV LAMBDA_TASK_ROOT=/var/task
ENV LAMBDA_RUNTIME_DIR=/var/runtime

WORKDIR /var/task

ENTRYPOINT ["/lambda-entrypoint.sh"]
