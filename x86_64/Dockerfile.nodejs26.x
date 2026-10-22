FROM scratch

ADD 0e54f15eca0d4ab26e971a912ff574bd1f3f14c1ec15b8d06f4f4bd399aa41d6.tar.xz /
ADD 36642d416b3915ab7110b686783d01f5aa0924d7866dd6d0699391012baecefe.tar.xz /
ADD 5bf9f8253644246c3cdcc2a43f518d2f8c9ac7f0d4c2066c95188b0d69ac0c15.tar.xz /
ADD 7101a451d26db4de2496619d661e0b0b39087823bb136bb661349fc2366c9ae9.tar.xz /
ADD 8a87a9579b1da01b06d7009d48a6e67dd308d6903a63cf72c40aa7914be44ae6.tar.xz /
ADD c914f08cd9bffb606b199952fa0fb3a3a049c9a14c4c392ddba9d9f9cca1147d.tar.xz /

ENV LANG=en_US.UTF-8
ENV TZ=:/etc/localtime
ENV PATH=/var/lang/bin:/usr/local/bin:/usr/bin/:/bin:/opt/bin
ENV LD_LIBRARY_PATH=/var/lang/lib:/lib64:/usr/lib64:/var/runtime:/var/runtime/lib:/var/task:/var/task/lib:/opt/lib
ENV LAMBDA_TASK_ROOT=/var/task
ENV LAMBDA_RUNTIME_DIR=/var/runtime

WORKDIR /var/task

ENTRYPOINT ["/lambda-entrypoint.sh"]
