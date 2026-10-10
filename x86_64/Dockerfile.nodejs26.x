FROM scratch

ADD 40c3c113f9df4b763a5c107c6d80e2c2e78e0949b45233af9716e4c25224c71f.tar.xz /
ADD 5d1fc9a72edb602cda9f400b74db65786dc8a7dd835ee8ff75875a6055b47214.tar.xz /
ADD 93b9ba89e40bde2194de237ff31021e2777662cb100be25e43725616d8205bf5.tar.xz /
ADD c914f08cd9bffb606b199952fa0fb3a3a049c9a14c4c392ddba9d9f9cca1147d.tar.xz /
ADD e0c27146f5c99b5b0102feb9ad0c3557ac8c124accda70c51079a4f624dc12ad.tar.xz /
ADD f670e25b82127800441a10c548618744245e094ad9aa89b1c64aa7a1fb6b8250.tar.xz /

ENV LANG=en_US.UTF-8
ENV TZ=:/etc/localtime
ENV PATH=/var/lang/bin:/usr/local/bin:/usr/bin/:/bin:/opt/bin
ENV LD_LIBRARY_PATH=/var/lang/lib:/lib64:/usr/lib64:/var/runtime:/var/runtime/lib:/var/task:/var/task/lib:/opt/lib
ENV LAMBDA_TASK_ROOT=/var/task
ENV LAMBDA_RUNTIME_DIR=/var/runtime

WORKDIR /var/task

ENTRYPOINT ["/lambda-entrypoint.sh"]
