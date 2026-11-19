FROM scratch
ADD x86_64/0b1f66592054862155b28026a0c9f6ef0cd7d46fcd2130c28912aeac3dab664d.tar.xz /
ADD x86_64/3b5f0141b8e03b8df068f9822b0486c448ef9dd7454aca1c9bf335cea7181cf4.tar.xz /
ADD x86_64/6d8eb75c29f323e3a36690d6e34d43544385152b96b288c257331df977992532.tar.xz /
ADD x86_64/7ad5d88a7a20e252bab15a1e931d9ff5238b6413770ed8c0ff82ea953566f987.tar.xz /
ADD x86_64/823873dc6bff0cf5674e52dd0173b9ea47e3cc9b4f952daa7b1bde631fb6dad2.tar.xz /
ADD x86_64/c225273dc5518056148f7927ca061a9342a5314c9198898d18cef7f0360a7c65.tar.xz /

ENV LANG=en_US.UTF-8
ENV TZ=:/etc/localtime
ENV PATH=/var/lang/bin:/usr/local/bin:/usr/bin/:/bin:/opt/bin
ENV LD_LIBRARY_PATH=/var/lang/lib:/lib64:/usr/lib64:/var/runtime:/var/runtime/lib:/var/task:/var/task/lib:/opt/lib
ENV LAMBDA_TASK_ROOT=/var/task
ENV LAMBDA_RUNTIME_DIR=/var/runtime

WORKDIR /var/task

ENTRYPOINT ["/lambda-entrypoint.sh"]
