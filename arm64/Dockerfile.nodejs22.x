FROM scratch

ADD 88f3b1215703b16e7fcd15f258b72df962f621d1bb3c7de0e30946a89cebdb85.tar.xz /
ADD 94d812b4b4f7914b0e4d16ac9cc85e71daeeee6e3b8d5a25c3be935d9d67ce85.tar.xz /
ADD be61b7aeca9b8b98ce6fa3fc9e6134be2a16db40cf15c5d0ece5e65d280fa8d6.tar.xz /
ADD ebbd10fd80e53e727a3cd71509925b487fb58e401c9e29df603cd228eb4dd557.tar.xz /
ADD eee902d2ea32623e96d437d29dc62e31c888bc64d13b3f5c90ba11063ff0ecd3.tar.xz /
ADD f7128de03b3d3f3d7a54eed6573358f4052578c347d1087904cccd78ce29ebc9.tar.xz /

ENV LANG=en_US.UTF-8
ENV TZ=:/etc/localtime
ENV PATH=/var/lang/bin:/usr/local/bin:/usr/bin/:/bin:/opt/bin
ENV LD_LIBRARY_PATH=/var/lang/lib:/lib64:/usr/lib64:/var/runtime:/var/runtime/lib:/var/task:/var/task/lib:/opt/lib
ENV LAMBDA_TASK_ROOT=/var/task
ENV LAMBDA_RUNTIME_DIR=/var/runtime

WORKDIR /var/task

ENTRYPOINT ["/lambda-entrypoint.sh"]
