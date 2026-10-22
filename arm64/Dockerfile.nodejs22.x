FROM scratch

ADD 4fa760674989d0048721883888471ae7d77a3633ae69f96813e44ecd30014c5f.tar.xz /
ADD 6325446aaa9cd03f3368f2925e4a0e63eeaf2201235883bc2ed8afc2a0deb2ba.tar.xz /
ADD 94d812b4b4f7914b0e4d16ac9cc85e71daeeee6e3b8d5a25c3be935d9d67ce85.tar.xz /
ADD a5b561ecc3d7c444c20167597d5c611dd0b15af0de958c6162259fe2c53a6845.tar.xz /
ADD a8184004d491d74d2a5023b693fdadf288a84a499af5cf5dbbe9ade002e9b5e7.tar.xz /
ADD d998af296e6141f7cafcaf22fea402fe143e0ff3e96e77997fdaeca3e6b65e69.tar.xz /

ENV LANG=en_US.UTF-8
ENV TZ=:/etc/localtime
ENV PATH=/var/lang/bin:/usr/local/bin:/usr/bin/:/bin:/opt/bin
ENV LD_LIBRARY_PATH=/var/lang/lib:/lib64:/usr/lib64:/var/runtime:/var/runtime/lib:/var/task:/var/task/lib:/opt/lib
ENV LAMBDA_TASK_ROOT=/var/task
ENV LAMBDA_RUNTIME_DIR=/var/runtime

WORKDIR /var/task

ENTRYPOINT ["/lambda-entrypoint.sh"]
