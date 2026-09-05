FROM scratch

ADD 0bd16e4c688daca8e13e3c00ce45ce26c9750e6282a9450be208fc5da23b2fde.tar.xz /
ADD 1375f8a28db72f2146b6520095691a93c1e3ab81689d2e8f20edf073dda7c4d6.tar.xz /
ADD 468ff767236132ca32e488ae1994d96ef1a024b78716427a8348d9795e5cd52f.tar.xz /
ADD 4a1e59a8ba37e5d5c5721666aa02100b4eba1f0e514a33e876d2b213830e81c4.tar.xz /
ADD 9048c8919c93315cd89d68b60d854b5ae8750b7f6c966759ebc170c82d95992d.tar.xz /
ADD d29498e451d95cb4bd5bbdad728b2be16ff89793ac50e2ad7e5e363d1f2050c4.tar.xz /

ENV LANG=en_US.UTF-8
ENV TZ=:/etc/localtime
ENV PATH=/var/lang/bin:/usr/local/bin:/usr/bin/:/bin:/opt/bin
ENV LD_LIBRARY_PATH=/var/lang/lib:/lib64:/usr/lib64:/var/runtime:/var/runtime/lib:/var/task:/var/task/lib:/opt/lib
ENV LAMBDA_TASK_ROOT=/var/task
ENV LAMBDA_RUNTIME_DIR=/var/runtime

WORKDIR /var/task

ENTRYPOINT ["/lambda-entrypoint.sh"]
