FROM scratch

ADD 216f5415fd85fda31ec7264eb9970f41986bf93735b98299ed5482bbc00d71bb.tar.xz /
ADD 52e7160d8dca366b7924930b6f9fdabf8866bbc2caa4164b8cefab2914af1e64.tar.xz /
ADD 83b02f50f65549add0b912c33d6b033ef2b0425702b5103e6796f1b3cba0cbab.tar.xz /
ADD 9048c8919c93315cd89d68b60d854b5ae8750b7f6c966759ebc170c82d95992d.tar.xz /
ADD 98412a1cdc879dc008f723d8aa9a9d4c691c7fa915c23d90ab68b2f2f0864bbe.tar.xz /
ADD d6149c83c9b398cee98cb7103e1ccd72791864c795ceb01e399e2dfb88ff5b70.tar.xz /

ENV LANG=en_US.UTF-8
ENV TZ=:/etc/localtime
ENV PATH=/var/lang/bin:/usr/local/bin:/usr/bin/:/bin:/opt/bin
ENV LD_LIBRARY_PATH=/var/lang/lib:/lib64:/usr/lib64:/var/runtime:/var/runtime/lib:/var/task:/var/task/lib:/opt/lib
ENV LAMBDA_TASK_ROOT=/var/task
ENV LAMBDA_RUNTIME_DIR=/var/runtime

WORKDIR /var/task

ENTRYPOINT ["/lambda-entrypoint.sh"]
