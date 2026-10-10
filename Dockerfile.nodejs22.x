FROM scratch
ADD x86_64/3f28ffaedeec585d1e2e4be53ac34726cf19ecbb824fc843de116c3cc95b421e.tar.xz /
ADD x86_64/704bd350456b2a6006732ad3bb84369f0bf64d7c626d8e9de9563f4d49306940.tar.xz /
ADD x86_64/c914f08cd9bffb606b199952fa0fb3a3a049c9a14c4c392ddba9d9f9cca1147d.tar.xz /
ADD x86_64/df780673e2b72bf05083aa0688efde8b106539ed3aca1af50feb040c8d7aaf82.tar.xz /
ADD x86_64/f7808c5f49f5f6a113fa351628e626c11cc0e98fc540cc551b19a713540b129a.tar.xz /
ADD x86_64/ff874a8327571e181a9558d8cc2e5060551a9e62d5dc02e478fab12ff2274ee7.tar.xz /

ENV LANG=en_US.UTF-8
ENV TZ=:/etc/localtime
ENV PATH=/var/lang/bin:/usr/local/bin:/usr/bin/:/bin:/opt/bin
ENV LD_LIBRARY_PATH=/var/lang/lib:/lib64:/usr/lib64:/var/runtime:/var/runtime/lib:/var/task:/var/task/lib:/opt/lib
ENV LAMBDA_TASK_ROOT=/var/task
ENV LAMBDA_RUNTIME_DIR=/var/runtime

WORKDIR /var/task

ENTRYPOINT ["/lambda-entrypoint.sh"]
