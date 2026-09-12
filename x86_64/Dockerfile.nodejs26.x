FROM scratch

ADD 1b32601f597579b922b7b42f5cf22b5d3f7ebfa1e7335dfd56a9470a74343981.tar.xz /
ADD 8a783def0e10019faee24169c7f1b5c9a6a878a7c302db8ee09c4f3c8b606938.tar.xz /
ADD 9f76aec384ef285b3fb7706d752ca38979ea90e91e81228f0734134f3a3644bc.tar.xz /
ADD a9aaddc337e14529221e9cf953a316cb4455666aa2adc26c8bf69239515c237a.tar.xz /
ADD d98a207e20db3ab5adf6b7c26cd3ff2d2380f4c923c79deb43a0b4984ba97326.tar.xz /
ADD e458d3728505f73e154261f0727715574eee84163ba37fb2ec223d719170c7a9.tar.xz /

ENV LANG=en_US.UTF-8
ENV TZ=:/etc/localtime
ENV PATH=/var/lang/bin:/usr/local/bin:/usr/bin/:/bin:/opt/bin
ENV LD_LIBRARY_PATH=/var/lang/lib:/lib64:/usr/lib64:/var/runtime:/var/runtime/lib:/var/task:/var/task/lib:/opt/lib
ENV LAMBDA_TASK_ROOT=/var/task
ENV LAMBDA_RUNTIME_DIR=/var/runtime

WORKDIR /var/task

ENTRYPOINT ["/lambda-entrypoint.sh"]
