FROM scratch

ADD 18136f8fe7fdd830c4cdecc60c5188a3e6b267125e4d079db1096e57a2679b5f.tar.xz /
ADD 19c45a8780e30155fbade2461d668219e7659634ce5acf5aaefc946b236ed836.tar.xz /
ADD 4a53580f070771a8004813886feee7b40be5b99199744753b84d2473a4610aef.tar.xz /
ADD 523fba1fb44f81897d9500c8ed76edefb26dd6f0295602aad71d8e41ee8ebbd3.tar.xz /
ADD b069a9eb6374ee8cc1efd92cbd5fdaad486d67a7c192a5e8c213e97c498ea20d.tar.xz /
ADD fb18c72d15eddf0177a7c7e5ca11d37e89371e3a9d3fda2e9df3a0ca116cae64.tar.xz /

ENV LANG=en_US.UTF-8
ENV TZ=:/etc/localtime
ENV PATH=/var/lang/bin:/usr/local/bin:/usr/bin/:/bin:/opt/bin
ENV LD_LIBRARY_PATH=/var/lang/lib:/lib64:/usr/lib64:/var/runtime:/var/runtime/lib:/var/task:/var/task/lib:/opt/lib
ENV LAMBDA_TASK_ROOT=/var/task
ENV LAMBDA_RUNTIME_DIR=/var/runtime

WORKDIR /var/task

ENTRYPOINT ["/lambda-entrypoint.sh"]
