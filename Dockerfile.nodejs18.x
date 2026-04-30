FROM scratch
ADD x86_64/40c0da841464070aa1f4af8c183aa3dea5d0c029ad8b20a5b8af1f631d50b871.tar.xz /
ADD x86_64/724407294290b13d482c2b3d068b8e5f2841a38e0da96d886bb2efc93146d7af.tar.xz /
ADD x86_64/875a0ef4525d860c6dc08ce1dc84a5f98d8ba6ac8522b91b3d890d7a390228bf.tar.xz /
ADD x86_64/b87f85265f2932c709cf90fccd512cdb88262b50a1786a1b96017f23b28772fc.tar.xz /
ADD x86_64/de3d0957fc1e1304bf40100509e613256461787efceb9ea99642691d068f0f5e.tar.xz /
ADD x86_64/dfd96b229c3fa2f8c085808e05b7fe1932ccdb9345b34c570a1fe8641e817144.tar.xz /

ENV LANG=en_US.UTF-8
ENV TZ=:/etc/localtime
ENV PATH=/var/lang/bin:/usr/local/bin:/usr/bin/:/bin:/opt/bin
ENV LD_LIBRARY_PATH=/var/lang/lib:/lib64:/usr/lib64:/var/runtime:/var/runtime/lib:/var/task:/var/task/lib:/opt/lib
ENV LAMBDA_TASK_ROOT=/var/task
ENV LAMBDA_RUNTIME_DIR=/var/runtime

WORKDIR /var/task

ENTRYPOINT ["/lambda-entrypoint.sh"]
