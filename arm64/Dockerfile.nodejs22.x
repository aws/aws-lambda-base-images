FROM scratch

ADD 438057328678b670d27aa2bcca024cc052d6041a2f5ae50c2c9c7a5b5fadee90.tar.xz /
ADD 50df6f1083afdfc4363729bf2dee9e74914f726618f6c425146eefb2e0e66556.tar.xz /
ADD 714c0c280e2977bb87f9f653c094874a0e90ab2cfc57af560bef54f223121ee6.tar.xz /
ADD 9048c8919c93315cd89d68b60d854b5ae8750b7f6c966759ebc170c82d95992d.tar.xz /
ADD da0f029b811597d7e5eee55657737cebda62285ade4f2c5cfd52a9064eb74f38.tar.xz /
ADD f3d7648df9ac292cf88249e8c0d8f12935e2288064d5284b831f6d24fd6b3398.tar.xz /

ENV LANG=en_US.UTF-8
ENV TZ=:/etc/localtime
ENV PATH=/var/lang/bin:/usr/local/bin:/usr/bin/:/bin:/opt/bin
ENV LD_LIBRARY_PATH=/var/lang/lib:/lib64:/usr/lib64:/var/runtime:/var/runtime/lib:/var/task:/var/task/lib:/opt/lib
ENV LAMBDA_TASK_ROOT=/var/task
ENV LAMBDA_RUNTIME_DIR=/var/runtime

WORKDIR /var/task

ENTRYPOINT ["/lambda-entrypoint.sh"]
