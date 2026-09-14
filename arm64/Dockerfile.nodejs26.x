FROM scratch

ADD 119cfe16807ef7e3511ecd51b0eb91d309018ea646f5723d48b5d2eb103c3bd2.tar.xz /
ADD 83af09b430aa6863d417de7bd42584f897ab2c08e34e2899dbef07487f0faa3b.tar.xz /
ADD 93d44358822655f8e28db331507b95916dbebdc4b6c7ac84d4c635c7f7481a6c.tar.xz /
ADD b74ec9186d0afb7728017d475fb3f258c004dc63bb08fbe5b7b1eb901d7a9325.tar.xz /
ADD e4a63e90aba7d016f01bf179794f2262eae4ebbdd3fd780396c95bf7efb1ebb9.tar.xz /
ADD e9d8bc8cb724f817685556bcd2818700b328e2e7037bc364b2231ae5349cc336.tar.xz /

ENV LANG=en_US.UTF-8
ENV TZ=:/etc/localtime
ENV PATH=/var/lang/bin:/usr/local/bin:/usr/bin/:/bin:/opt/bin
ENV LD_LIBRARY_PATH=/var/lang/lib:/lib64:/usr/lib64:/var/runtime:/var/runtime/lib:/var/task:/var/task/lib:/opt/lib
ENV LAMBDA_TASK_ROOT=/var/task
ENV LAMBDA_RUNTIME_DIR=/var/runtime

WORKDIR /var/task

ENTRYPOINT ["/lambda-entrypoint.sh"]
