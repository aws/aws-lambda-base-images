FROM scratch

ADD 04fedf6c4585c593f0d4e44368be46deb7b1918f76788332be48551203d26a66.tar.xz /
ADD 86bddd7b7e5cba3db6bf572621f3adc6469a63b221fff180159540337a226ba0.tar.xz /
ADD c1a5e26675d6104f1f23f610b562e87c762c3246aa106626c6beafc5d8587f10.tar.xz /
ADD e8a65d48c8aabb0774fda0d1f060f33a83ef30f6ffa0112b37b6dc8961b36759.tar.xz /
ADD eefdc573d5256fc128484aa41294c86f786ff8a1c1505e0c8b83d1718ebfa50e.tar.xz /
ADD fe72f7bf94106581a636e3df0709ee5a2b390caa7a59a32bb25745d9c091c801.tar.xz /

ENV LANG=en_US.UTF-8
ENV TZ=:/etc/localtime
ENV PATH=/var/lang/bin:/usr/local/bin:/usr/bin/:/bin:/opt/bin
ENV LD_LIBRARY_PATH=/var/lang/lib:/lib64:/usr/lib64:/var/runtime:/var/runtime/lib:/var/task:/var/task/lib:/opt/lib
ENV LAMBDA_TASK_ROOT=/var/task
ENV LAMBDA_RUNTIME_DIR=/var/runtime

WORKDIR /var/task

ENTRYPOINT ["/lambda-entrypoint.sh"]
