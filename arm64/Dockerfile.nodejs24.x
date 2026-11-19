FROM scratch

ADD 3d60a4921f3a6598e57f7ff49953b70ac91506e3148386968080501e36f98fcb.tar.xz /
ADD 549105f99f33d95bf3040f5fc57eab4969fcaeb1e041f5eaa9a36a4ec159df01.tar.xz /
ADD 5d21a467dac05578d727596e8f973712b66f5505851e33def2821146d97dcb0c.tar.xz /
ADD 64b2242f28cd33466d33c9b5a1040fd0ba4d5a096814c8a860b134f357664ca6.tar.xz /
ADD 68acf3e0b67bdd3c55b41cb2381181578a697d5d82c2dc6e054d2113942f832f.tar.xz /
ADD f8d0beaeeb623acc85c55242f9680d8e1dbefa6fd68b6da121b49e0d513f1e16.tar.xz /

ENV LANG=en_US.UTF-8
ENV TZ=:/etc/localtime
ENV PATH=/var/lang/bin:/usr/local/bin:/usr/bin/:/bin:/opt/bin
ENV LD_LIBRARY_PATH=/var/lang/lib:/lib64:/usr/lib64:/var/runtime:/var/runtime/lib:/var/task:/var/task/lib:/opt/lib
ENV LAMBDA_TASK_ROOT=/var/task
ENV LAMBDA_RUNTIME_DIR=/var/runtime

WORKDIR /var/task

ENTRYPOINT ["/lambda-entrypoint.sh"]
