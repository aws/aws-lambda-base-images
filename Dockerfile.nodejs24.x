FROM scratch
ADD x86_64/01188f71f22894994dfacd0687d7b2e527aa327e46aaa7526578aa323c35ed47.tar.xz /
ADD x86_64/0d87260d98bc379822a9fe015f5c277af594cc1616aefa028f59b1d04e824c74.tar.xz /
ADD x86_64/1b20b360a9c4e1fe33c4ef2fa4a716aeb61ba70068cb225febe5300a46fc203f.tar.xz /
ADD x86_64/1e391dee81534c59407f4a4830d4b312dc8d857e7f95769ff8f5d3293b2aef21.tar.xz /
ADD x86_64/51fcbf64c59f46d73ef537d25e7bbf322b7445916d45c00b973f5fa8ecd856a1.tar.xz /
ADD x86_64/c914f08cd9bffb606b199952fa0fb3a3a049c9a14c4c392ddba9d9f9cca1147d.tar.xz /

ENV LANG=en_US.UTF-8
ENV TZ=:/etc/localtime
ENV PATH=/var/lang/bin:/usr/local/bin:/usr/bin/:/bin:/opt/bin
ENV LD_LIBRARY_PATH=/var/lang/lib:/lib64:/usr/lib64:/var/runtime:/var/runtime/lib:/var/task:/var/task/lib:/opt/lib
ENV LAMBDA_TASK_ROOT=/var/task
ENV LAMBDA_RUNTIME_DIR=/var/runtime

WORKDIR /var/task

ENTRYPOINT ["/lambda-entrypoint.sh"]
