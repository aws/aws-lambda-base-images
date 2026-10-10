FROM scratch

ADD 0692269c78d4fd5b2c0a91cea1309e20f49f7dcf60d0859739fa9e68caa84ca8.tar.xz /
ADD 60818cd20b8864b0c714fb2ef0869af20a292c34ee28a4054e9be352bd14a93d.tar.xz /
ADD 715660abee5b50099d9859effcaaf54c12a42b19f23c277d6673cb7ec27a14cf.tar.xz /
ADD 764af15e56b54ac9704868670aefe4f9d69fc1c6f1292bd5944fd0ff1cef40ff.tar.xz /
ADD c914f08cd9bffb606b199952fa0fb3a3a049c9a14c4c392ddba9d9f9cca1147d.tar.xz /
ADD ed6382210385344fb905c855eb9f921e5236ca8e6443aef0194c9c9b5eb488f7.tar.xz /

ENV LANG=en_US.UTF-8
ENV TZ=:/etc/localtime
ENV PATH=/var/lang/bin:/usr/local/bin:/usr/bin/:/bin:/opt/bin
ENV LD_LIBRARY_PATH=/var/lang/lib:/lib64:/usr/lib64:/var/runtime:/var/runtime/lib:/var/task:/var/task/lib:/opt/lib
ENV LAMBDA_TASK_ROOT=/var/task
ENV LAMBDA_RUNTIME_DIR=/var/runtime

WORKDIR /var/task

ENTRYPOINT ["/lambda-entrypoint.sh"]
