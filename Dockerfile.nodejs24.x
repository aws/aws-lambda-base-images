FROM scratch
ADD x86_64/00d52ef8356fe74fc5c9f7dbc85e503ab1e1d7de46d0dfa99c8ed109afe4ab7b.tar.xz /
ADD x86_64/40a0e514455b01b25129bae3a571bc6f3d479853874712081ba2022e4f7fe900.tar.xz /
ADD x86_64/49716f439f50c540b4925ff821e219b21afc543b5b13be7a33c917514741f949.tar.xz /
ADD x86_64/65922a6d4bbbbb505a12f500b99064e34e808dbd12a0b394afb73f6c8c557211.tar.xz /
ADD x86_64/c914f08cd9bffb606b199952fa0fb3a3a049c9a14c4c392ddba9d9f9cca1147d.tar.xz /
ADD x86_64/eddae8fa3a2d47168fbb4ad14e2542ac0528e1d020be0ad9943a2e65ecb1173b.tar.xz /

ENV LANG=en_US.UTF-8
ENV TZ=:/etc/localtime
ENV PATH=/var/lang/bin:/usr/local/bin:/usr/bin/:/bin:/opt/bin
ENV LD_LIBRARY_PATH=/var/lang/lib:/lib64:/usr/lib64:/var/runtime:/var/runtime/lib:/var/task:/var/task/lib:/opt/lib
ENV LAMBDA_TASK_ROOT=/var/task
ENV LAMBDA_RUNTIME_DIR=/var/runtime

WORKDIR /var/task

ENTRYPOINT ["/lambda-entrypoint.sh"]
