FROM scratch

ADD 0f4f5fd495ddb62dd5232919e6058d972395aa4815dd3781e5e7753bf386469e.tar.xz /
ADD 261d31ce1ddc0b2b22471dceef0fbb56df57369eee2b91052811124c221adb15.tar.xz /
ADD 46b5c3e87c97afac554ce6232373c5070488c7fb404dfa2a8e11947f6b13694a.tar.xz /
ADD 71bc43aa3ba0b458bd24b1e84f13156d7002d898088592fb71897c797fc39a52.tar.xz /
ADD 7c4eaabeb05c097e8ce2277fc96d0e40fb1384da93d895a6e23a6ca79fdbaa4d.tar.xz /
ADD c914f08cd9bffb606b199952fa0fb3a3a049c9a14c4c392ddba9d9f9cca1147d.tar.xz /

ENV LANG=en_US.UTF-8
ENV TZ=:/etc/localtime
ENV PATH=/var/lang/bin:/usr/local/bin:/usr/bin/:/bin:/opt/bin
ENV LD_LIBRARY_PATH=/var/lang/lib:/lib64:/usr/lib64:/var/runtime:/var/runtime/lib:/var/task:/var/task/lib:/opt/lib
ENV LAMBDA_TASK_ROOT=/var/task
ENV LAMBDA_RUNTIME_DIR=/var/runtime

WORKDIR /var/task

ENTRYPOINT ["/lambda-entrypoint.sh"]
