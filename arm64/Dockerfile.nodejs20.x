FROM scratch

ADD 0aed47291a51c6fb34c0873f714605c015aa57092ab27b16ed0cbdbd2c695128.tar.xz /
ADD 1f54e5dc002bbdc46701ee1b039683c4866396ca6b12a57f8ef9a22e1ad9c425.tar.xz /
ADD 267546cc699402453360503572592f0d6732658eb49eb0f80138c068eaaf25fd.tar.xz /
ADD 4fd6654d236aad5c41accba0d40d35a80f3157d8a4955d29a65be52240be0c5d.tar.xz /
ADD 9121246c9f0deb20abdb8533ef6e04b11272f3dabcbcbebcc91096c2bf71338c.tar.xz /
ADD d09fbee8f62883980223beadcf82ff3f55b67bc53941aba40046250fcfd45d62.tar.xz /

ENV LANG=en_US.UTF-8
ENV TZ=:/etc/localtime
ENV PATH=/var/lang/bin:/usr/local/bin:/usr/bin/:/bin:/opt/bin
ENV LD_LIBRARY_PATH=/var/lang/lib:/lib64:/usr/lib64:/var/runtime:/var/runtime/lib:/var/task:/var/task/lib:/opt/lib
ENV LAMBDA_TASK_ROOT=/var/task
ENV LAMBDA_RUNTIME_DIR=/var/runtime

WORKDIR /var/task

ENTRYPOINT ["/lambda-entrypoint.sh"]
