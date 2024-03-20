FROM scratch
ADD x86_64/13c9a42f522f1be0a318a89d253c31c00e6ed5b0545828c9ec34cb695744c551.tar.xz /
ADD x86_64/a6afe36b2257125ba83be57c1c9cfdb5d4cbdb3ea89742330b18f5be3aca9cc5.tar.xz /
ADD x86_64/c1620a46f42260903175c3531c660e0cee2af8adff42fe5a4afeb4fdf5f6954f.tar.xz /
ADD x86_64/c3bc3149ba3e75d84471030a95c5fa5f1072c2b353cbcff4a3b286386dfcf634.tar.xz /
ADD x86_64/e884466af998b9a9129cd05ab922fb58405ce30210e71e9166249a3db654cc4a.tar.xz /
ADD x86_64/fa24d8a598b6740577f87684d77066edbdf77c4839b7c2154b15e44db314e0ff.tar.xz /

ENV LANG=en_US.UTF-8
ENV TZ=:/etc/localtime
ENV PATH=/var/lang/bin:/usr/local/bin:/usr/bin/:/bin:/opt/bin
ENV LD_LIBRARY_PATH=/var/lang/lib:/lib64:/usr/lib64:/var/runtime:/var/runtime/lib:/var/task:/var/task/lib:/opt/lib
ENV LAMBDA_TASK_ROOT=/var/task
ENV LAMBDA_RUNTIME_DIR=/var/runtime

WORKDIR /var/task

ENTRYPOINT ["/lambda-entrypoint.sh"]
