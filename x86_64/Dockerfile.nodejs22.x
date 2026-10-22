FROM scratch

ADD 0245cb686b195c78008bf84fc501b41a056b523c81825313664f47588acfb607.tar.xz /
ADD 7eaa263ea388526dda8a8a39af37d685a8920485144ea88da313cf6c502d07ae.tar.xz /
ADD a6728c27585ab720293470fe9b73180827af23a2f2c20d8e5358dd1cc67d24e9.tar.xz /
ADD c914f08cd9bffb606b199952fa0fb3a3a049c9a14c4c392ddba9d9f9cca1147d.tar.xz /
ADD d7c8b8eb92e9fbc5c17cb6a1e65adabadc73984846e0fee10fbca317ac24113e.tar.xz /
ADD eabbe761e11f663d83a8af37cc89fd5fd4335e39f40d777cc42e5d78816de1f2.tar.xz /

ENV LANG=en_US.UTF-8
ENV TZ=:/etc/localtime
ENV PATH=/var/lang/bin:/usr/local/bin:/usr/bin/:/bin:/opt/bin
ENV LD_LIBRARY_PATH=/var/lang/lib:/lib64:/usr/lib64:/var/runtime:/var/runtime/lib:/var/task:/var/task/lib:/opt/lib
ENV LAMBDA_TASK_ROOT=/var/task
ENV LAMBDA_RUNTIME_DIR=/var/runtime

WORKDIR /var/task

ENTRYPOINT ["/lambda-entrypoint.sh"]
