FROM scratch
ADD x86_64/25dc727e51ca25d7a6d081a69af0e1abc7d43c6a848f5e7ec16c4b563b00576d.tar.xz /
ADD x86_64/55d0225afd8b2f744ab37a271e1f8aa8d5256986b77771ab3e281c350a29817f.tar.xz /
ADD x86_64/67c607459bd7d2afcb70ef2fdb54b442a28e4f940a76bc05e66f7821422c8234.tar.xz /
ADD x86_64/7af3fd75405d3c9dc3c015f9f8cd8a8a7dfd4238a2318aeb31e19ea4207a67ab.tar.xz /
ADD x86_64/a13e1e342c3d117d0d9ef6492ea6f8e63e09af41c5d529d0d7759d6dac145d17.tar.xz /
ADD x86_64/b6b4850bdc1a2e9edac2ac4abcbd82b5943001fea0ee20a36fc2a59be8847516.tar.xz /

ENV LANG=en_US.UTF-8
ENV TZ=:/etc/localtime
ENV PATH=/var/lang/bin:/usr/local/bin:/usr/bin/:/bin:/opt/bin
ENV LD_LIBRARY_PATH=/var/lang/lib:/lib64:/usr/lib64:/var/runtime:/var/runtime/lib:/var/task:/var/task/lib:/opt/lib
ENV LAMBDA_TASK_ROOT=/var/task
ENV LAMBDA_RUNTIME_DIR=/var/runtime

WORKDIR /var/task

ENTRYPOINT ["/lambda-entrypoint.sh"]
