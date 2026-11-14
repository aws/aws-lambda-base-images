FROM scratch
ADD x86_64/10c7f91afc187d5126ff8c9e97d0467386b2d7bc8cd978a5ec8abbbba1746ec4.tar.xz /
ADD x86_64/20bd01633ce64cabc553385f782f250cd2a2506c2299e67547465cda08342e14.tar.xz /
ADD x86_64/5a64525c8d0ba40cb11fb60c3b0f293d0ceb8015acc2ee6a87915e90d1861a52.tar.xz /
ADD x86_64/6d8eb75c29f323e3a36690d6e34d43544385152b96b288c257331df977992532.tar.xz /
ADD x86_64/bdf47d22d29b7c43681c28b09e2f83d79e475f978a338f980aaec282d8f0b791.tar.xz /
ADD x86_64/e6c0ca34513b09c515e7382653842c38e896ba270dc7b4c44c0c54feccacd8ac.tar.xz /

ENV LANG=en_US.UTF-8
ENV TZ=:/etc/localtime
ENV PATH=/var/lang/bin:/usr/local/bin:/usr/bin/:/bin:/opt/bin
ENV LD_LIBRARY_PATH=/var/lang/lib:/lib64:/usr/lib64:/var/runtime:/var/runtime/lib:/var/task:/var/task/lib:/opt/lib
ENV LAMBDA_TASK_ROOT=/var/task
ENV LAMBDA_RUNTIME_DIR=/var/runtime

WORKDIR /var/task

ENTRYPOINT ["/lambda-entrypoint.sh"]
