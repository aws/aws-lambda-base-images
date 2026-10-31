FROM scratch

ADD 14bf4f182990797156b967935e695a1d9a6a65d901387ea7cc6dc5e1003f9806.tar.xz /
ADD 2c20c4fd6cbac771bdd7ee7381fe25b30023a08dadedb306b2fbecad1e0fc32b.tar.xz /
ADD 33853410f28ff5e619424dff48f3bae6af37b2835cf69577c5ae9456318294fb.tar.xz /
ADD 48a10d18a410db6440a26a46f03b259e847f81a4653eb5ba05d943a2d6347fc7.tar.xz /
ADD b0ba466dc2444bb1d7135c924d35a644e04e3dd81ea1516c2812a147acb03dd5.tar.xz /
ADD f6075e5418e748ac76b5e816dd141712a9589d786313835ff5722103547a9109.tar.xz /

ENV LANG=en_US.UTF-8
ENV TZ=:/etc/localtime
ENV PATH=/var/lang/bin:/usr/local/bin:/usr/bin/:/bin:/opt/bin
ENV LD_LIBRARY_PATH=/var/lang/lib:/lib64:/usr/lib64:/var/runtime:/var/runtime/lib:/var/task:/var/task/lib:/opt/lib
ENV LAMBDA_TASK_ROOT=/var/task
ENV LAMBDA_RUNTIME_DIR=/var/runtime

WORKDIR /var/task

ENTRYPOINT ["/lambda-entrypoint.sh"]
