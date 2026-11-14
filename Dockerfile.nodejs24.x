FROM scratch
ADD x86_64/31026dbc16244b675e03dd2b68e67cc07aee053121848817546b0ca928010edf.tar.xz /
ADD x86_64/6d8eb75c29f323e3a36690d6e34d43544385152b96b288c257331df977992532.tar.xz /
ADD x86_64/75127f530c3776aac074e31c6a7b0a3d3e6e6fe1379cb0a3365751c0914c439d.tar.xz /
ADD x86_64/b2e89368a9d0fb5d23980eda470f35f7803816f59366d5295691660a7e662991.tar.xz /
ADD x86_64/e19b463001cf145f4ddca57217049c7d7ecd50c1ac41138167b13b0e66322f48.tar.xz /
ADD x86_64/ff7e442120c176a053805f981aa028b0fd485e492cd352330f25a016b7e21e9d.tar.xz /

ENV LANG=en_US.UTF-8
ENV TZ=:/etc/localtime
ENV PATH=/var/lang/bin:/usr/local/bin:/usr/bin/:/bin:/opt/bin
ENV LD_LIBRARY_PATH=/var/lang/lib:/lib64:/usr/lib64:/var/runtime:/var/runtime/lib:/var/task:/var/task/lib:/opt/lib
ENV LAMBDA_TASK_ROOT=/var/task
ENV LAMBDA_RUNTIME_DIR=/var/runtime

WORKDIR /var/task

ENTRYPOINT ["/lambda-entrypoint.sh"]
