FROM scratch
ADD x86_64/17b9f50b9c42ec5003c1d64ce4f264f414aa9893f06f100d242e04bd6fb1f4c7.tar.xz /
ADD x86_64/23cd53df203da808645c58426f439408de0ddc9e418cedca5ff9928ef5ed94f9.tar.xz /
ADD x86_64/49b984350c733ac4733fae94132c684dc78f5df57d8c2097722ffbf30fff90a3.tar.xz /
ADD x86_64/a933f9791c542dd1f1a6391709b358c5327153a00b5b001c48211aa7f0b6f66e.tar.xz /
ADD x86_64/c914f08cd9bffb606b199952fa0fb3a3a049c9a14c4c392ddba9d9f9cca1147d.tar.xz /
ADD x86_64/e693e1540a1700bdaa5ef63f174e219a069807063433384643b28a11c804d856.tar.xz /

ENV LANG=en_US.UTF-8
ENV TZ=:/etc/localtime
ENV PATH=/var/lang/bin:/usr/local/bin:/usr/bin/:/bin:/opt/bin
ENV LD_LIBRARY_PATH=/var/lang/lib:/lib64:/usr/lib64:/var/runtime:/var/runtime/lib:/var/task:/var/task/lib:/opt/lib
ENV LAMBDA_TASK_ROOT=/var/task
ENV LAMBDA_RUNTIME_DIR=/var/runtime

WORKDIR /var/task

ENTRYPOINT ["/lambda-entrypoint.sh"]
