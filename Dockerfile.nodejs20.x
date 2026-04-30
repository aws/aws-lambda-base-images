FROM scratch
ADD x86_64/452c52ddcd6b2e805dd3ff71e1198a961afa7fa05da1e8295264e573aadf4c23.tar.xz /
ADD x86_64/52af2e381844ccc42fe01c040db6fcabdb1c9c1e2999d197f6bdb9ac13fb2a7c.tar.xz /
ADD x86_64/93f01ee83a7a6e16b8ae34799c1f8a542eca0aefdbabf9d5ffd4dc575321f9ba.tar.xz /
ADD x86_64/add4af02097d68e814bd193bc789082023c790f0c3aecf9a96d4c4b1e62a916e.tar.xz /
ADD x86_64/e5e0cd73db7bb066a7df023ac58bf0e23508c793594989aa3a8125515ec93226.tar.xz /
ADD x86_64/e807ce98a25be181fa05420ab6e3185b1be707f99efb811876bdcd5be0e25da3.tar.xz /

ENV LANG=en_US.UTF-8
ENV TZ=:/etc/localtime
ENV PATH=/var/lang/bin:/usr/local/bin:/usr/bin/:/bin:/opt/bin
ENV LD_LIBRARY_PATH=/var/lang/lib:/lib64:/usr/lib64:/var/runtime:/var/runtime/lib:/var/task:/var/task/lib:/opt/lib
ENV LAMBDA_TASK_ROOT=/var/task
ENV LAMBDA_RUNTIME_DIR=/var/runtime

WORKDIR /var/task

ENTRYPOINT ["/lambda-entrypoint.sh"]
