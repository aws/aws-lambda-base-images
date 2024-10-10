FROM scratch

ADD a39caf10e3cbd70f91b18c1ecd93b518a25be908d67b602750783c3e13b706b0.tar.xz /
ADD a94ef9e773dce990fae8e4ac61123745a0de0258df675dbe1c8004813357db10.tar.xz /
ADD bc2822bacfc89ad600a0f5410972fbad59dc0826c8b82d3d12f3fbf2c380a099.tar.xz /
ADD c9a29d5cbfdf00a763770b6fb8a71f7a11bab75822467a1d674ba5c7ea728f8b.tar.xz /
ADD d132dd73b2940c706488b0f9e7d700c5b85eb522e5f3d81fa6865a5a0a0a0e51.tar.xz /
ADD fb18c72d15eddf0177a7c7e5ca11d37e89371e3a9d3fda2e9df3a0ca116cae64.tar.xz /

ENV LANG=en_US.UTF-8
ENV TZ=:/etc/localtime
ENV PATH=/var/lang/bin:/usr/local/bin:/usr/bin/:/bin:/opt/bin
ENV LD_LIBRARY_PATH=/var/lang/lib:/lib64:/usr/lib64:/var/runtime:/var/runtime/lib:/var/task:/var/task/lib:/opt/lib
ENV LAMBDA_TASK_ROOT=/var/task
ENV LAMBDA_RUNTIME_DIR=/var/runtime

WORKDIR /var/task

ENTRYPOINT ["/lambda-entrypoint.sh"]
