FROM scratch

ADD 1fd0b7e50e359c0285623a4333e083bc13c668b0506168dcae688fedab63afe0.tar.xz /
ADD 94d812b4b4f7914b0e4d16ac9cc85e71daeeee6e3b8d5a25c3be935d9d67ce85.tar.xz /
ADD 9e83a0793e42b2afb4b1c2cb7745576d7398c5db515a7f704c5d2efe8d1fbc6b.tar.xz /
ADD b8d3c364fbcec93954297b284b082a9f0d784d8a91d74b4fa7f7e7d647528083.tar.xz /
ADD c627ae663a15d922775eb0d644edc2cd9c398cc9fc7720fe2e3726fc72a194b1.tar.xz /
ADD fa6f15b8292f6a5db2f6963d7d2f980a37cc7393919b0360a134d3d61af3b226.tar.xz /

ENV LANG=en_US.UTF-8
ENV TZ=:/etc/localtime
ENV PATH=/var/lang/bin:/usr/local/bin:/usr/bin/:/bin:/opt/bin
ENV LD_LIBRARY_PATH=/var/lang/lib:/lib64:/usr/lib64:/var/runtime:/var/runtime/lib:/var/task:/var/task/lib:/opt/lib
ENV LAMBDA_TASK_ROOT=/var/task
ENV LAMBDA_RUNTIME_DIR=/var/runtime

WORKDIR /var/task

ENTRYPOINT ["/lambda-entrypoint.sh"]
