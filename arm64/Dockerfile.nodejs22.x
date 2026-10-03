FROM scratch

ADD 1d4a36ebb0b0aaf68d44467ec7ddde7c28bfb267a166049aebcffcd1a6df5406.tar.xz /
ADD 787a2b8e44012dbb3a61987a1ffbf1189496636f23151eb630e53aa180740f12.tar.xz /
ADD 94d812b4b4f7914b0e4d16ac9cc85e71daeeee6e3b8d5a25c3be935d9d67ce85.tar.xz /
ADD af3fc874619ec406c711c2dd4975022de0cf60bc9e2baa8ae77a5cef7f395e9c.tar.xz /
ADD c9fed09331230c653b6019f1790f10d906c9100137f521b336bb44b358c3a989.tar.xz /
ADD eca5e022a562b5ea88f2354b78ea2642e86f24bc433d253af11a877f058a9313.tar.xz /

ENV LANG=en_US.UTF-8
ENV TZ=:/etc/localtime
ENV PATH=/var/lang/bin:/usr/local/bin:/usr/bin/:/bin:/opt/bin
ENV LD_LIBRARY_PATH=/var/lang/lib:/lib64:/usr/lib64:/var/runtime:/var/runtime/lib:/var/task:/var/task/lib:/opt/lib
ENV LAMBDA_TASK_ROOT=/var/task
ENV LAMBDA_RUNTIME_DIR=/var/runtime

WORKDIR /var/task

ENTRYPOINT ["/lambda-entrypoint.sh"]
