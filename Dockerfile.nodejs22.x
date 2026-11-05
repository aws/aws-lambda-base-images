FROM scratch
ADD x86_64/253dd5e7a44ff1a9198588e2a820eb2e2f635c881a82c8ef6d66384664f76cf8.tar.xz /
ADD x86_64/3296e48eba512b3e6e5c14452a3d5095fcb714bea85db5326a99460b889823c8.tar.xz /
ADD x86_64/338989e0077f08694b6e854642a6d87909fc93a947a377cdd7b9bacf6cbdfaef.tar.xz /
ADD x86_64/53a3530adb7b1af543aa429facf6e9be95c1fd96ae329e3f2336859cc4fd0338.tar.xz /
ADD x86_64/55d0225afd8b2f744ab37a271e1f8aa8d5256986b77771ab3e281c350a29817f.tar.xz /
ADD x86_64/597ee264833d682fe078c4c6314612c082736d177ff54253fc5f81d1ffc094e3.tar.xz /

ENV LANG=en_US.UTF-8
ENV TZ=:/etc/localtime
ENV PATH=/var/lang/bin:/usr/local/bin:/usr/bin/:/bin:/opt/bin
ENV LD_LIBRARY_PATH=/var/lang/lib:/lib64:/usr/lib64:/var/runtime:/var/runtime/lib:/var/task:/var/task/lib:/opt/lib
ENV LAMBDA_TASK_ROOT=/var/task
ENV LAMBDA_RUNTIME_DIR=/var/runtime

WORKDIR /var/task

ENTRYPOINT ["/lambda-entrypoint.sh"]
