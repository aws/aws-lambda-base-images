FROM scratch
ADD x86_64/0cff4522f1fdc4b0571ca2d14a6c52525bcfa8de71caedcf5b9a45a3696d279e.tar.xz /
ADD x86_64/826a973857a4cfb5fa36cb556d6b5ca735427ea0538119bff0d20fd63876872b.tar.xz /
ADD x86_64/8868467c62c7723031c61f43e8b77e15ed09002b2b802b9666b6fa99a6a482d7.tar.xz /
ADD x86_64/911e3e1244d7305e60ba9ae447bc34bfcb48c97ddc6ae3d132dcab91f33510c3.tar.xz /
ADD x86_64/b637ee8bf224712a221c775aaca24c4a8c39520afb413e37609bc57be417bc4f.tar.xz /
ADD x86_64/ddc2c5c70856de71cef09eebe77812c7ead9bec6f58bb694ab0abb266b727e09.tar.xz /

ENV LANG=en_US.UTF-8
ENV TZ=:/etc/localtime
ENV PATH=/var/lang/bin:/usr/local/bin:/usr/bin/:/bin:/opt/bin
ENV LD_LIBRARY_PATH=/var/lang/lib:/lib64:/usr/lib64:/var/runtime:/var/runtime/lib:/var/task:/var/task/lib:/opt/lib
ENV LAMBDA_TASK_ROOT=/var/task
ENV LAMBDA_RUNTIME_DIR=/var/runtime

WORKDIR /var/task

ENTRYPOINT ["/lambda-entrypoint.sh"]
