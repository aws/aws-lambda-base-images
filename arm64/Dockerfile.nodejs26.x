FROM scratch

ADD 14bf4f182990797156b967935e695a1d9a6a65d901387ea7cc6dc5e1003f9806.tar.xz /
ADD 150b40fc5ac881028030b51196dcf1115007b6625af79c13eb2210f2998424a2.tar.xz /
ADD 2e67feef7303efa43abbd9eb7c9b0c6a8981b1474cf50a4f36fdeece9701a623.tar.xz /
ADD 963e8ce1cb9a4af7fc7755ca0e0cc5ec17fda6ad979426b931517c70d42516d3.tar.xz /
ADD ae82dbef03ea6f92c01871fe03d414fa3b979ebdecede31620bbd21dbc2a6fcc.tar.xz /
ADD b5bef9bdda0ff095c01805d66d88b021ab97bc60e3c8bdc57ec4260d6c8a06eb.tar.xz /

ENV LANG=en_US.UTF-8
ENV TZ=:/etc/localtime
ENV PATH=/var/lang/bin:/usr/local/bin:/usr/bin/:/bin:/opt/bin
ENV LD_LIBRARY_PATH=/var/lang/lib:/lib64:/usr/lib64:/var/runtime:/var/runtime/lib:/var/task:/var/task/lib:/opt/lib
ENV LAMBDA_TASK_ROOT=/var/task
ENV LAMBDA_RUNTIME_DIR=/var/runtime

WORKDIR /var/task

ENTRYPOINT ["/lambda-entrypoint.sh"]
