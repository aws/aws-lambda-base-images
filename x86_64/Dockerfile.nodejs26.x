FROM scratch

ADD 3b89b75646a92ba185e70b910ca10377c2cfa5e97937d682c9f80255c124f3ae.tar.xz /
ADD 407958e6c7fc8920872a10e6513f78bf584b90d9859dab6d45bc34a8a833ad48.tar.xz /
ADD 83032514f630ec146fd4542f636f9380ad6902d87745c246be8a04d41bb8ed11.tar.xz /
ADD c914f08cd9bffb606b199952fa0fb3a3a049c9a14c4c392ddba9d9f9cca1147d.tar.xz /
ADD deb16eed7a068c852c50598afe13d60350d2418f7865845126beec1195719e85.tar.xz /
ADD e03a0cbded24e29b6e0a3d07890408bce5b3ac45cfe221970c56dc81103bd5dc.tar.xz /

ENV LANG=en_US.UTF-8
ENV TZ=:/etc/localtime
ENV PATH=/var/lang/bin:/usr/local/bin:/usr/bin/:/bin:/opt/bin
ENV LD_LIBRARY_PATH=/var/lang/lib:/lib64:/usr/lib64:/var/runtime:/var/runtime/lib:/var/task:/var/task/lib:/opt/lib
ENV LAMBDA_TASK_ROOT=/var/task
ENV LAMBDA_RUNTIME_DIR=/var/runtime

WORKDIR /var/task

ENTRYPOINT ["/lambda-entrypoint.sh"]
