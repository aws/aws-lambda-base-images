FROM scratch

ADD 0c7cecb198ece904da3ebae7e1859f8583472c02292b00559b276918bbff9b96.tar.xz /
ADD 37a3edea56ebf3055488f62da38e98093ea5e00cc39f8dc53c3eb4aa46e5dd63.tar.xz /
ADD 8f694f1665a85c5e90c3f1c18ba894dc5206200dfd32dc499697bca290db4b74.tar.xz /
ADD a2f4f5569b7d9b2308f3d16d9c0f3b83c3c88014b0f0d11084e3b194b603d498.tar.xz /
ADD b4978054bcf4f1ef74718b62388bd8a1b51be08afad1fee09c9f1d9c5a4b9311.tar.xz /
ADD c914f08cd9bffb606b199952fa0fb3a3a049c9a14c4c392ddba9d9f9cca1147d.tar.xz /

ENV LANG=en_US.UTF-8
ENV TZ=:/etc/localtime
ENV PATH=/var/lang/bin:/usr/local/bin:/usr/bin/:/bin:/opt/bin
ENV LD_LIBRARY_PATH=/var/lang/lib:/lib64:/usr/lib64:/var/runtime:/var/runtime/lib:/var/task:/var/task/lib:/opt/lib
ENV LAMBDA_TASK_ROOT=/var/task
ENV LAMBDA_RUNTIME_DIR=/var/runtime

WORKDIR /var/task

ENTRYPOINT ["/lambda-entrypoint.sh"]
