FROM scratch

ADD 04540a22667bc93b9ac2ec7c1fed4586f00d0629911798eacc9bf4a822d944d7.tar.xz /
ADD 359469608b0d5ae472c530b3e8d44235389d7d1ff51a325738b3566bb678e837.tar.xz /
ADD 55d0225afd8b2f744ab37a271e1f8aa8d5256986b77771ab3e281c350a29817f.tar.xz /
ADD 5d4e7c5c20451c354a33ad7b9870325ee799af8c0c37cca0b63a7644a03402d2.tar.xz /
ADD dfb6a3dd84632956189eb934ba589705764d6584b61fc0e19f83ac188ccfd409.tar.xz /
ADD fef36f02f2b438e8ff4db569049afa81adfd48720c18632ce8b3df2cdb8ad2d0.tar.xz /

ENV LANG=en_US.UTF-8
ENV TZ=:/etc/localtime
ENV PATH=/var/lang/bin:/usr/local/bin:/usr/bin/:/bin:/opt/bin
ENV LD_LIBRARY_PATH=/var/lang/lib:/lib64:/usr/lib64:/var/runtime:/var/runtime/lib:/var/task:/var/task/lib:/opt/lib
ENV LAMBDA_TASK_ROOT=/var/task
ENV LAMBDA_RUNTIME_DIR=/var/runtime

WORKDIR /var/task

ENTRYPOINT ["/lambda-entrypoint.sh"]
