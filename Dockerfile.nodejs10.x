FROM scratch

ADD 080b99bd4066acd6374803536d419df50d3a3ccc967676bc6a112944b4528af0.tar.xz /
ADD 3df1182d242207936a52111d852a60d4e7683caf40b20539def6c870e6e1d57a.tar.xz /
ADD 4fe8a21090bd818a6d75bf7f351c44806583ebdbafb8abeb35d446497dfaadaf.tar.xz /
ADD 6a7447333f322f24805d73b79151fc0eab978a2eecd4f11150852ede48acb63f.tar.xz /
ADD 843a47ae251d42c58cedb9c039bfbf1ad9af636fde8cff81b9e0a892cc153842.tar.xz /
ADD 8c675a804303aace206230ba91b7ec4b2e849fe51b953d6401efa6b4e6055285.tar.xz /

ENV LANG=en_US.UTF-8
ENV TZ=:/etc/localtime
ENV PATH=/var/lang/bin:/usr/local/bin:/usr/bin/:/bin:/opt/bin
ENV LD_LIBRARY_PATH=/var/lang/lib:/lib64:/usr/lib64:/var/runtime:/var/runtime/lib:/var/task:/var/task/lib:/opt/lib
ENV LAMBDA_TASK_ROOT=/var/task
ENV LAMBDA_RUNTIME_DIR=/var/runtime

WORKDIR /var/task

ENTRYPOINT ["/lambda-entrypoint.sh"]

