FROM scratch
ADD x86_64/049ca2dd7a8b88616405d55a62ed54c87d86d0c85b8bfc93e864a82732fabcd0.tar.xz /
ADD x86_64/1a4cbea4cca103348fccc99db7f5d323d7b10011478be2763ff8b27d47f497cb.tar.xz /
ADD x86_64/331baf61b1f27c66c63ce3edd13320fc6f50bf6e0464de9e85060528f9eb84a6.tar.xz /
ADD x86_64/6c93403fd2d0f4e43160befbb951c9106487d2b731dd4ca33654aa458a7611ad.tar.xz /
ADD x86_64/966fe476102910940292077dd2e7411e0e8a4beae2bfa76388a01a2c1f6a2651.tar.xz /
ADD x86_64/ffb2e96629f21fef1c71cac1e15f941d62d425ce431737ce12f2fbc2bb20c27d.tar.xz /

ENV LANG=en_US.UTF-8
ENV TZ=:/etc/localtime
ENV PATH=/var/lang/bin:/usr/local/bin:/usr/bin/:/bin:/opt/bin
ENV LD_LIBRARY_PATH=/var/lang/lib:/lib64:/usr/lib64:/var/runtime:/var/runtime/lib:/var/task:/var/task/lib:/opt/lib
ENV LAMBDA_TASK_ROOT=/var/task
ENV LAMBDA_RUNTIME_DIR=/var/runtime

WORKDIR /var/task

ENTRYPOINT ["/lambda-entrypoint.sh"]
