FROM scratch

ADD 1f4a49aa213d2f029954a298931dead5b422ca54810c3c6068a94d33da77c47a.tar.xz /
ADD 360597f46bc53f8d704ee513460de4ebc0251ad41d3da81f253385c8b1c9c313.tar.xz /
ADD 535252ad906311d22cfe103a627a253812faa8b8ca3c4929135b3854de6a17fe.tar.xz /
ADD 94d812b4b4f7914b0e4d16ac9cc85e71daeeee6e3b8d5a25c3be935d9d67ce85.tar.xz /
ADD a72660d8e763ec0763f0abce3d7d38333e12d09fb7d0151adea8c6a977d3b893.tar.xz /
ADD ad9da04eb6d7f2238eedc67ae163b7c82fe71f18e0170a2837c1f60d70b27088.tar.xz /

ENV LANG=en_US.UTF-8
ENV TZ=:/etc/localtime
ENV PATH=/var/lang/bin:/usr/local/bin:/usr/bin/:/bin:/opt/bin
ENV LD_LIBRARY_PATH=/var/lang/lib:/lib64:/usr/lib64:/var/runtime:/var/runtime/lib:/var/task:/var/task/lib:/opt/lib
ENV LAMBDA_TASK_ROOT=/var/task
ENV LAMBDA_RUNTIME_DIR=/var/runtime

WORKDIR /var/task

ENTRYPOINT ["/lambda-entrypoint.sh"]
