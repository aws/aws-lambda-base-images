FROM scratch

ADD 6a7447333f322f24805d73b79151fc0eab978a2eecd4f11150852ede48acb63f.tar.xz /
ADD 7a4a81b76ca7b87cb3d582b3860259a89c975b0d450b9d476b3db0c347f3cf67.tar.xz /
ADD 87e1773527b504ba148cf75125cc6bc3b5960724f6070621188b0a6e1d765345.tar.xz /
ADD 89b3f7b77e5d6f866c1e55d8fb502e23ffc832d605f8ac04af4a91a89b70fc34.tar.xz /
ADD af423719f689e703e541c18ca8f94f9c75a54d52486bf09b07c114bff36e9e31.tar.xz /
ADD b35866923a19f3420761a91970f92d56e3af49da62bcbb4ecc77356429cbca0c.tar.xz /

ENV LANG=en_US.UTF-8
ENV TZ=:/etc/localtime
ENV PATH=/var/lang/bin:/usr/local/bin:/usr/bin/:/bin:/opt/bin
ENV LD_LIBRARY_PATH=/var/lang/lib:/lib64:/usr/lib64:/var/runtime:/var/runtime/lib:/var/task:/var/task/lib:/opt/lib
ENV LAMBDA_TASK_ROOT=/var/task
ENV LAMBDA_RUNTIME_DIR=/var/runtime

WORKDIR /var/task

ENTRYPOINT ["/lambda-entrypoint.sh"]

