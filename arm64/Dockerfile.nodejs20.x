FROM scratch

ADD 1aab71d7d6f3ded9457109701622dc554da1a5334679f57891b53a000610d772.tar.xz /
ADD 583e5d59f7a497ac046be57e396c99fa40e52c0719cc9040e5a52aba485a613f.tar.xz /
ADD 5e57cc0af3a908c0183bb1e0a1305f7a120575d84dd1b048659c3fa39c3e01a5.tar.xz /
ADD 62f3413718278fa1768ec5d9ada7f6d521588bdd7242a680512e3dae9fdbd619.tar.xz /
ADD 95ad8f1c61ec26dd943ebfc5c05395293bc6670daf8614e2f145a708e9cadbbf.tar.xz /
ADD ccd4c1b6c62d65b5799a7e7267b03969cefad677a10ceba31bcd7160874cabf4.tar.xz /

ENV LANG=en_US.UTF-8
ENV TZ=:/etc/localtime
ENV PATH=/var/lang/bin:/usr/local/bin:/usr/bin/:/bin:/opt/bin
ENV LD_LIBRARY_PATH=/var/lang/lib:/lib64:/usr/lib64:/var/runtime:/var/runtime/lib:/var/task:/var/task/lib:/opt/lib
ENV LAMBDA_TASK_ROOT=/var/task
ENV LAMBDA_RUNTIME_DIR=/var/runtime

WORKDIR /var/task

ENTRYPOINT ["/lambda-entrypoint.sh"]
