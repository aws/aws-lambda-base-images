FROM scratch

ADD 062a64540459f1d8ad507567cf0ec170a91929d99317ba9acf8f3b635938d003.tar.xz /
ADD 5cd409664d711b6f39681acfe8714cf3244bab0b5f8411d42fffd7d162619d10.tar.xz /
ADD 66821c753d19092e590ff381a35ec1b0ee8a11cc36ccf162e70d1b8339cfcbc3.tar.xz /
ADD 6a7447333f322f24805d73b79151fc0eab978a2eecd4f11150852ede48acb63f.tar.xz /
ADD 6e178952c13ded8d8dce43ba8cdb42a979970d30f4dca88802e0a6ffd8d49478.tar.xz /
ADD a7460851fee8cda633e6c00e8695cf950928d3b15e2ac87c1592f213fc9472ae.tar.xz /

ENV LANG=en_US.UTF-8
ENV TZ=:/etc/localtime
ENV PATH=/var/lang/bin:/usr/local/bin:/usr/bin/:/bin:/opt/bin
ENV LD_LIBRARY_PATH=/var/lang/lib:/lib64:/usr/lib64:/var/runtime:/var/runtime/lib:/var/task:/var/task/lib:/opt/lib
ENV LAMBDA_TASK_ROOT=/var/task
ENV LAMBDA_RUNTIME_DIR=/var/runtime

WORKDIR /var/task

ENTRYPOINT ["/lambda-entrypoint.sh"]

