FROM scratch

ADD 8fa6e620268ab56d0718e4079052227eb3a5e887f1c429fb75a88ed5c04f6659.tar.xz /
ADD b27b7c59bc8f7d64ba2c3935e0d1f6e859c9fea8270d5e4ba166dbef61fbe464.tar.xz /
ADD b5c9e64bbcafa58e5fb39c284e693299f42626a8295cc0b1d7602c33cf903f9f.tar.xz /
ADD d18b570475ddef48d5bb575c34909416d4bbaec7e3521a8c61d3fde89e18c873.tar.xz /
ADD d741681b27db0bbfafc37be3f0722ec88887a3bafa9a51ba121c6efb7a9401d6.tar.xz /

ENV LANG=en_US.UTF-8
ENV TZ=:/etc/localtime
ENV PATH=/var/lang/bin:/usr/local/bin:/usr/bin/:/bin:/opt/bin
ENV LD_LIBRARY_PATH=/var/lang/lib:/lib64:/usr/lib64:/var/runtime:/var/runtime/lib:/var/task:/var/task/lib:/opt/lib
ENV LAMBDA_TASK_ROOT=/var/task
ENV LAMBDA_RUNTIME_DIR=/var/runtime

WORKDIR /var/task

ENTRYPOINT ["/lambda-entrypoint.sh"]
