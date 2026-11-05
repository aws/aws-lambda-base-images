FROM scratch

ADD 1e49fb74070857309f33f4a504a5007ba3db4ecb0214b03ba862e215e47bd655.tar.xz /
ADD 1eb66a6c78c0e7466fc91da7565569a8f0718fbfde37936eb5054e850990e966.tar.xz /
ADD 4a271514c9e0fde2c5c3a32cc9baea2b0eba3c600e0554f644e297f6414af2ba.tar.xz /
ADD 55d0225afd8b2f744ab37a271e1f8aa8d5256986b77771ab3e281c350a29817f.tar.xz /
ADD 572054f1fd54e41fdc882a6fcb2879f067b7e1af4c668130f030ad2744c5c390.tar.xz /
ADD dc126b0fe6208f12674d22bc54f60ad63fe33f832d755b9ef1310d4526925dd5.tar.xz /

ENV LANG=en_US.UTF-8
ENV TZ=:/etc/localtime
ENV PATH=/var/lang/bin:/usr/local/bin:/usr/bin/:/bin:/opt/bin
ENV LD_LIBRARY_PATH=/var/lang/lib:/lib64:/usr/lib64:/var/runtime:/var/runtime/lib:/var/task:/var/task/lib:/opt/lib
ENV LAMBDA_TASK_ROOT=/var/task
ENV LAMBDA_RUNTIME_DIR=/var/runtime

WORKDIR /var/task

ENTRYPOINT ["/lambda-entrypoint.sh"]
