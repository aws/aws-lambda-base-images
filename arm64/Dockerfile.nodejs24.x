FROM scratch

ADD 0e729f39f7d1aa2e48de4dafd3c2b7c33637694c26e1aeaba3b237e339522e83.tar.xz /
ADD 138660cfdfa59e668bf306edbb647e1ee7b8f66c530ad0124ff13c520791d6d9.tar.xz /
ADD 4e9a2894c40812478ff9be2b42f59bcc95cbe4c21ba6d489dafe65919e69edba.tar.xz /
ADD 9048c8919c93315cd89d68b60d854b5ae8750b7f6c966759ebc170c82d95992d.tar.xz /
ADD f20e68b3448523f172206c27ae3c6eb0880fa0e83661b6faf81308b5c5b92ef3.tar.xz /
ADD f51db99c1e989dbacc92359ec7d75388600421b54fe899919621ee0d5816a933.tar.xz /

ENV LANG=en_US.UTF-8
ENV TZ=:/etc/localtime
ENV PATH=/var/lang/bin:/usr/local/bin:/usr/bin/:/bin:/opt/bin
ENV LD_LIBRARY_PATH=/var/lang/lib:/lib64:/usr/lib64:/var/runtime:/var/runtime/lib:/var/task:/var/task/lib:/opt/lib
ENV LAMBDA_TASK_ROOT=/var/task
ENV LAMBDA_RUNTIME_DIR=/var/runtime

WORKDIR /var/task

ENTRYPOINT ["/lambda-entrypoint.sh"]
