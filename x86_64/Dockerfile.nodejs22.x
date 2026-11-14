FROM scratch

ADD 1697b214f98859d3fd61de31331385d5b3b26b8965a15d9159cf568f52cc624f.tar.xz /
ADD 47858d1106e56073227134acf3db5673390aaafc0b24fe532603eb4f9cd5adae.tar.xz /
ADD 55f7f30e96d8b0af4f144611083420bbdaa90381e6d6572fd93501022bc75178.tar.xz /
ADD 6d8eb75c29f323e3a36690d6e34d43544385152b96b288c257331df977992532.tar.xz /
ADD ae3d77488035566b9c84a364a4534a23bd90855d45d322ca84779240186f6635.tar.xz /
ADD c21fc8e61665345141b6c359ab9a4c6a16bcdc8e1ca8b35d8cc6de42bcde8ac3.tar.xz /

ENV LANG=en_US.UTF-8
ENV TZ=:/etc/localtime
ENV PATH=/var/lang/bin:/usr/local/bin:/usr/bin/:/bin:/opt/bin
ENV LD_LIBRARY_PATH=/var/lang/lib:/lib64:/usr/lib64:/var/runtime:/var/runtime/lib:/var/task:/var/task/lib:/opt/lib
ENV LAMBDA_TASK_ROOT=/var/task
ENV LAMBDA_RUNTIME_DIR=/var/runtime

WORKDIR /var/task

ENTRYPOINT ["/lambda-entrypoint.sh"]
