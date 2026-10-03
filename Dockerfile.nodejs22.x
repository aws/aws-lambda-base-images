FROM scratch
ADD x86_64/2b4428abea29cb2d8500ee25266f2e765d0a7a30468d009acd0e09cec2cf707c.tar.xz /
ADD x86_64/30eb2eacf3e28c0f19e8f268870980a2df106d27a2514aac31c69af7773c7a40.tar.xz /
ADD x86_64/56ed2408a3c6986715453feaa11f7fb4bc44687f6fa4a71f15b90f27c6781303.tar.xz /
ADD x86_64/795077512e7db7b4f146e67bdf135b382af428fc3f7ae23077f6e9e188109e7a.tar.xz /
ADD x86_64/a4cf5e57a482611dd1b19621d9e56a4dd9631a135bc426fbe93cbea9e294b21d.tar.xz /
ADD x86_64/c914f08cd9bffb606b199952fa0fb3a3a049c9a14c4c392ddba9d9f9cca1147d.tar.xz /

ENV LANG=en_US.UTF-8
ENV TZ=:/etc/localtime
ENV PATH=/var/lang/bin:/usr/local/bin:/usr/bin/:/bin:/opt/bin
ENV LD_LIBRARY_PATH=/var/lang/lib:/lib64:/usr/lib64:/var/runtime:/var/runtime/lib:/var/task:/var/task/lib:/opt/lib
ENV LAMBDA_TASK_ROOT=/var/task
ENV LAMBDA_RUNTIME_DIR=/var/runtime

WORKDIR /var/task

ENTRYPOINT ["/lambda-entrypoint.sh"]
