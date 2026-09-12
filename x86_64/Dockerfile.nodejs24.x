FROM scratch

ADD 70ce88b70e383061115d1e7bfb9dcb21ccd42b98d26d7483d010a48c86480e0c.tar.xz /
ADD 9f76aec384ef285b3fb7706d752ca38979ea90e91e81228f0734134f3a3644bc.tar.xz /
ADD af2b1078d466a4676f9ad82a8c0b057775eff88088661af783be18e739b680d9.tar.xz /
ADD c4208f84e4abee3bd167221ebbd140590ba8fc886b20608845f1cb52ab1d758b.tar.xz /
ADD d95c16ab5df92028378bed1ffac09e8cd3ec397209ecca97e4a826ce6b69ad9a.tar.xz /
ADD fcb2116ee8afa74813e6756ff9d4a527ece0c901b4ecfdfbae5b4ead4ab0f3a3.tar.xz /

ENV LANG=en_US.UTF-8
ENV TZ=:/etc/localtime
ENV PATH=/var/lang/bin:/usr/local/bin:/usr/bin/:/bin:/opt/bin
ENV LD_LIBRARY_PATH=/var/lang/lib:/lib64:/usr/lib64:/var/runtime:/var/runtime/lib:/var/task:/var/task/lib:/opt/lib
ENV LAMBDA_TASK_ROOT=/var/task
ENV LAMBDA_RUNTIME_DIR=/var/runtime

WORKDIR /var/task

ENTRYPOINT ["/lambda-entrypoint.sh"]
