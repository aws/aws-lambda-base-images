FROM scratch
ADD x86_64/15f23ccdc12db67f530e5d4d924b46621daf75731cf8cacc10e213e7e72b2488.tar.xz /
ADD x86_64/6d8eb75c29f323e3a36690d6e34d43544385152b96b288c257331df977992532.tar.xz /
ADD x86_64/7ec03f195fc85778025cf370ec99e5849b1431078c175e17ba8e3b32ae5832a0.tar.xz /
ADD x86_64/855a8a090c53125d97108f8e28ff6ed1fdf6644b2cbfed3db2f5e06b4b8b608f.tar.xz /
ADD x86_64/c78c24e7df41ea17966f9fb30d6b06c120568d049cc53529b291b51835e95393.tar.xz /
ADD x86_64/fe00932f9f5a67aaa08c2d0bd2f58831a08b106b84535cdec7a8b9ff81a8c83f.tar.xz /

ENV LANG=en_US.UTF-8
ENV TZ=:/etc/localtime
ENV PATH=/var/lang/bin:/usr/local/bin:/usr/bin/:/bin:/opt/bin
ENV LD_LIBRARY_PATH=/var/lang/lib:/lib64:/usr/lib64:/var/runtime:/var/runtime/lib:/var/task:/var/task/lib:/opt/lib
ENV LAMBDA_TASK_ROOT=/var/task
ENV LAMBDA_RUNTIME_DIR=/var/runtime

WORKDIR /var/task

ENTRYPOINT ["/lambda-entrypoint.sh"]
