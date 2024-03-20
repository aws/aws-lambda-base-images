FROM scratch
ADD x86_64/03b0f8040e432b78cddf2ab473d48ec144bd9f91753bb9a72070b96c81f6eb7c.tar.xz /
ADD x86_64/bc227632c2b2e107ffed036578d73b04b1bdad476d8b71ba0808452479127b40.tar.xz /
ADD x86_64/c3bc3149ba3e75d84471030a95c5fa5f1072c2b353cbcff4a3b286386dfcf634.tar.xz /
ADD x86_64/dab4546e4a403bdbe390781436789d26d653fff9ee5408d29ea269be9bc44da8.tar.xz /
ADD x86_64/e47edf3e32997c8ea2894bb1de2edc029dc7067fd1c3ca030080a2d7bc49d672.tar.xz /
ADD x86_64/f0b3be554eb491094079877149eb8286033d8fdf6f80d86bce4db1ad7d82b3ab.tar.xz /

ENV LANG=en_US.UTF-8
ENV TZ=:/etc/localtime
ENV PATH=/var/lang/bin:/usr/local/bin:/usr/bin/:/bin:/opt/bin
ENV LD_LIBRARY_PATH=/var/lang/lib:/lib64:/usr/lib64:/var/runtime:/var/runtime/lib:/var/task:/var/task/lib:/opt/lib
ENV LAMBDA_TASK_ROOT=/var/task
ENV LAMBDA_RUNTIME_DIR=/var/runtime

WORKDIR /var/task

ENTRYPOINT ["/lambda-entrypoint.sh"]
