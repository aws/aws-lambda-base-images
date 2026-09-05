FROM scratch

ADD 252270b3e2f6d38bb7cd1e8f23f0985d7f5ef35b8d3d9f00637857d17292e748.tar.xz /
ADD 2c1ce9b3182032f0804a84af8e18fa6c730c427f73f9f45c5cf98c5a2d46f40a.tar.xz /
ADD 5cb8acf55a5f96c5d145c8112c1d8a124e99eee13c3ce66101158ca6746fa6c0.tar.xz /
ADD 6ccb7ba9dd9baee960893844f6ff8d21493901fb16382e0dc753f04e692c6788.tar.xz /
ADD 9f76aec384ef285b3fb7706d752ca38979ea90e91e81228f0734134f3a3644bc.tar.xz /
ADD fd7bada43482c89438e3d1ffde161c0a381753cc7bf669471dda989355bd8503.tar.xz /

ENV LANG=en_US.UTF-8
ENV TZ=:/etc/localtime
ENV PATH=/var/lang/bin:/usr/local/bin:/usr/bin/:/bin:/opt/bin
ENV LD_LIBRARY_PATH=/var/lang/lib:/lib64:/usr/lib64:/var/runtime:/var/runtime/lib:/var/task:/var/task/lib:/opt/lib
ENV LAMBDA_TASK_ROOT=/var/task
ENV LAMBDA_RUNTIME_DIR=/var/runtime

WORKDIR /var/task

ENTRYPOINT ["/lambda-entrypoint.sh"]
