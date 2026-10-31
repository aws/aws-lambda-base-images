FROM scratch
ADD x86_64/3bba901c22b3f3f8889c42fd8f50fd106bca4be9863df3b76920fb03fa2e0813.tar.xz /
ADD x86_64/4d1440e0db77e703b6b5e2cf5c931b6e1c6e1155493d4b70096c10f3b4c0f366.tar.xz /
ADD x86_64/55d0225afd8b2f744ab37a271e1f8aa8d5256986b77771ab3e281c350a29817f.tar.xz /
ADD x86_64/590b482c4e0e2ee8b9870ce7ddafad680e10823aa30f2d1c157eea351dcb8147.tar.xz /
ADD x86_64/a7363e4a9ad9087f6da20ff4b402dc33a5975cd30241baf29da2e7f3da27a975.tar.xz /
ADD x86_64/c30c94eeb996c5f3cd956fc138278c9910c0d8240eea49c1a4418e12dc8ba323.tar.xz /

ENV LANG=en_US.UTF-8
ENV TZ=:/etc/localtime
ENV PATH=/var/lang/bin:/usr/local/bin:/usr/bin/:/bin:/opt/bin
ENV LD_LIBRARY_PATH=/var/lang/lib:/lib64:/usr/lib64:/var/runtime:/var/runtime/lib:/var/task:/var/task/lib:/opt/lib
ENV LAMBDA_TASK_ROOT=/var/task
ENV LAMBDA_RUNTIME_DIR=/var/runtime

WORKDIR /var/task

ENTRYPOINT ["/lambda-entrypoint.sh"]
