FROM scratch

ADD 1658130d2c005172dbf66f73c21226861dfd6a6b58d29d12ec28aadad996c38e.tar.xz /
ADD 74d32600639ca941ca1721efcd40b855efb3906be3a66acaa307b8b417cd78a1.tar.xz /
ADD 83af09b430aa6863d417de7bd42584f897ab2c08e34e2899dbef07487f0faa3b.tar.xz /
ADD e229b0ddacf010584e906f75aea33c454ec6858a6342473ad9ed0e11ed163017.tar.xz /
ADD f1a5d1b25f95a4921e5e666a0e98517c4d99d02e2e1c053797b9c695d7f7729e.tar.xz /
ADD ff9e47d90a62e1eec543a6a606f2d85f6ae37b080490f19b835168254feac98d.tar.xz /

ENV LANG=en_US.UTF-8
ENV TZ=:/etc/localtime
ENV PATH=/var/lang/bin:/usr/local/bin:/usr/bin/:/bin:/opt/bin
ENV LD_LIBRARY_PATH=/var/lang/lib:/lib64:/usr/lib64:/var/runtime:/var/runtime/lib:/var/task:/var/task/lib:/opt/lib
ENV LAMBDA_TASK_ROOT=/var/task
ENV LAMBDA_RUNTIME_DIR=/var/runtime

WORKDIR /var/task

ENTRYPOINT ["/lambda-entrypoint.sh"]
