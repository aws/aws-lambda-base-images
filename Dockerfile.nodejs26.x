FROM scratch
ADD x86_64/5e74ad0cedc5fcea04e82a9c074521a7e32213461751e68e9febd2351dc48a4b.tar.xz /
ADD x86_64/726f202a246ea241e71c411311312e281f7f7f3c14f04a3896a25db3139a923e.tar.xz /
ADD x86_64/74fb340dd22b0682c4d43982715d836ac6e6af8663c5a662fcb549739f478a68.tar.xz /
ADD x86_64/7b1b62efff7807476b91eb16320971200cba1fdbcd79dbf6e89300bd9977c66f.tar.xz /
ADD x86_64/86f0383eb31c47b152941c409029099a654aceaa11b64f5152a45b50ed9b17ac.tar.xz /
ADD x86_64/eca19fa99794abbf99b9b4eb13f2f116db38383d87ca3230d882656dfd9748ca.tar.xz /

ENV LANG=en_US.UTF-8
ENV TZ=:/etc/localtime
ENV PATH=/var/lang/bin:/usr/local/bin:/usr/bin/:/bin:/opt/bin
ENV LD_LIBRARY_PATH=/var/lang/lib:/lib64:/usr/lib64:/var/runtime:/var/runtime/lib:/var/task:/var/task/lib:/opt/lib
ENV LAMBDA_TASK_ROOT=/var/task
ENV LAMBDA_RUNTIME_DIR=/var/runtime

WORKDIR /var/task

ENTRYPOINT ["/lambda-entrypoint.sh"]
