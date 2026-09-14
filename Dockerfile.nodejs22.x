FROM scratch
ADD x86_64/5b1220993add144e8313da2d15de956a5dc12ce879ce68db63da7cc3deb5174d.tar.xz /
ADD x86_64/879b6f0d9cadbbcd9245f345b5e23c6ca1b9fbc4e8322ec814ff35f963306687.tar.xz /
ADD x86_64/a39edc2aeb132d65b68492a144e71946c48e98b82abdcfa9b5634f5f829de952.tar.xz /
ADD x86_64/bd561ddd00d2f180da55057e1d14c0889821a4c9aa80e6701292d61ffa350638.tar.xz /
ADD x86_64/df86b82a5a2601acf695c53556431efc8c4a7a8f228ffeeecc5dfa228a6e2b38.tar.xz /
ADD x86_64/eca19fa99794abbf99b9b4eb13f2f116db38383d87ca3230d882656dfd9748ca.tar.xz /

ENV LANG=en_US.UTF-8
ENV TZ=:/etc/localtime
ENV PATH=/var/lang/bin:/usr/local/bin:/usr/bin/:/bin:/opt/bin
ENV LD_LIBRARY_PATH=/var/lang/lib:/lib64:/usr/lib64:/var/runtime:/var/runtime/lib:/var/task:/var/task/lib:/opt/lib
ENV LAMBDA_TASK_ROOT=/var/task
ENV LAMBDA_RUNTIME_DIR=/var/runtime

WORKDIR /var/task

ENTRYPOINT ["/lambda-entrypoint.sh"]
