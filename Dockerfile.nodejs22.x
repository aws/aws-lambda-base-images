FROM scratch
ADD x86_64/150e0e96c0ff5b638d7a9b03006d181ed2efc2e82e2bc5e7c76f0f33dcca1631.tar.xz /
ADD x86_64/7b6bd961101f5b83631a97e322d33727bc7c7fa307643b155bdcbbb93cbea218.tar.xz /
ADD x86_64/83a0ddc9aff54b56d8828ef6b997d1de6ad3149a6acabeb62591be2de6491ba3.tar.xz /
ADD x86_64/9e4cb04fca12d207d4777e03aa88ac24d1128b72b312445549f17baf7e6dbe74.tar.xz /
ADD x86_64/9f76aec384ef285b3fb7706d752ca38979ea90e91e81228f0734134f3a3644bc.tar.xz /
ADD x86_64/ed064f5ac13385ba548cf03e3977d5e50a0912e40f78d3b5266883a2f7f6f6fd.tar.xz /

ENV LANG=en_US.UTF-8
ENV TZ=:/etc/localtime
ENV PATH=/var/lang/bin:/usr/local/bin:/usr/bin/:/bin:/opt/bin
ENV LD_LIBRARY_PATH=/var/lang/lib:/lib64:/usr/lib64:/var/runtime:/var/runtime/lib:/var/task:/var/task/lib:/opt/lib
ENV LAMBDA_TASK_ROOT=/var/task
ENV LAMBDA_RUNTIME_DIR=/var/runtime

WORKDIR /var/task

ENTRYPOINT ["/lambda-entrypoint.sh"]
