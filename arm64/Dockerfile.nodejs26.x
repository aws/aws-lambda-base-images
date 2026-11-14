FROM scratch

ADD 20912159c25e99ae27586225642532861afcb4d80961f5666c56d4604b72aebc.tar.xz /
ADD 228f374e0a33aa49e3ecedf1af99e2af01c884b61d56ada8b82a0f88ec5288c7.tar.xz /
ADD 3c6762354b150a8fa7a249e472a2a1cd6c034411ba42ccad529576ebd8d395dc.tar.xz /
ADD 896a28c99585f037a835a5c21fcec58f191f8e4424626e779260a8de62d53729.tar.xz /
ADD b78fb9899d55668b68f187bba68a47fcb796b58645cf8301424e68ac60063c71.tar.xz /
ADD f8d0beaeeb623acc85c55242f9680d8e1dbefa6fd68b6da121b49e0d513f1e16.tar.xz /

ENV LANG=en_US.UTF-8
ENV TZ=:/etc/localtime
ENV PATH=/var/lang/bin:/usr/local/bin:/usr/bin/:/bin:/opt/bin
ENV LD_LIBRARY_PATH=/var/lang/lib:/lib64:/usr/lib64:/var/runtime:/var/runtime/lib:/var/task:/var/task/lib:/opt/lib
ENV LAMBDA_TASK_ROOT=/var/task
ENV LAMBDA_RUNTIME_DIR=/var/runtime

WORKDIR /var/task

ENTRYPOINT ["/lambda-entrypoint.sh"]
