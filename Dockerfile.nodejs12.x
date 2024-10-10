FROM scratch
ADD x86_64/0cff4522f1fdc4b0571ca2d14a6c52525bcfa8de71caedcf5b9a45a3696d279e.tar.xz /
ADD x86_64/0ef7b26e79d831b0e9c1e70ded062dbac91ca75f36b029ab6a36b094749838f4.tar.xz /
ADD x86_64/4ff4d5226a09df0e1cfb5c10e731f9d101e94ac0580bef134b06a6106ef4080c.tar.xz /
ADD x86_64/a893d210d574fce37a43cf2a10a0a61973a5f001235fde6cb4faa5bf5841ef0e.tar.xz /
ADD x86_64/d59759fc38d74186d2d5971004442ec163b75712cc1305a1b5bad6f938e583c2.tar.xz /
ADD x86_64/fb5d4948979245db218c3e0dd1be80f6c3850091f02b4510bad548259ca6f772.tar.xz /

ENV LANG=en_US.UTF-8
ENV TZ=:/etc/localtime
ENV PATH=/var/lang/bin:/usr/local/bin:/usr/bin/:/bin:/opt/bin
ENV LD_LIBRARY_PATH=/var/lang/lib:/lib64:/usr/lib64:/var/runtime:/var/runtime/lib:/var/task:/var/task/lib:/opt/lib
ENV LAMBDA_TASK_ROOT=/var/task
ENV LAMBDA_RUNTIME_DIR=/var/runtime

WORKDIR /var/task

ENTRYPOINT ["/lambda-entrypoint.sh"]
