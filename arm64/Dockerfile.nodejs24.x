FROM scratch

ADD 282b4fe2dda0ab3958656b4deee551a26f03127b5e152dcc486e6c7f3f8492b7.tar.xz /
ADD 41a81406a5badbebb910deb1a3c6dc0f533595b20563159d31fb26a5484ab366.tar.xz /
ADD 94d812b4b4f7914b0e4d16ac9cc85e71daeeee6e3b8d5a25c3be935d9d67ce85.tar.xz /
ADD b891f7dcbd0271cfd972a3115d1302f425598069bd919414d47961d20ebc837f.tar.xz /
ADD bb23fb3935f07cec79ab664fdd0aabae6a7be5736d201b4f2b8dfa15e0d5ce04.tar.xz /
ADD e8edd7fc5a10a2029e9f9a8eabf9c5348e46343f442b696ffe8fdcaea74cc2a6.tar.xz /

ENV LANG=en_US.UTF-8
ENV TZ=:/etc/localtime
ENV PATH=/var/lang/bin:/usr/local/bin:/usr/bin/:/bin:/opt/bin
ENV LD_LIBRARY_PATH=/var/lang/lib:/lib64:/usr/lib64:/var/runtime:/var/runtime/lib:/var/task:/var/task/lib:/opt/lib
ENV LAMBDA_TASK_ROOT=/var/task
ENV LAMBDA_RUNTIME_DIR=/var/runtime

WORKDIR /var/task

ENTRYPOINT ["/lambda-entrypoint.sh"]
