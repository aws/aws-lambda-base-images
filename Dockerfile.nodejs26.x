FROM scratch
ADD x86_64/1d73f5b12bc1734abaf1552de12d32e30dec7dac8faa8a19997af8f5a3b11208.tar.xz /
ADD x86_64/499c769ae79c529181d605f5cb08fdf8440522183f4e900ee82a7dff70d81da1.tar.xz /
ADD x86_64/5bf1bb65460b2a81582cafdcd3b4f9da3ac12ea212d7b84870f7ca802507d542.tar.xz /
ADD x86_64/6d8eb75c29f323e3a36690d6e34d43544385152b96b288c257331df977992532.tar.xz /
ADD x86_64/8ba36f32bcaad75812d5fda3be962f8b885758cf5b0f0a2ae1cecd1caee76280.tar.xz /
ADD x86_64/fc901768d30c7deded589a1b220e45ae4cbe988a6356fb7d2d4378ec78ba1c24.tar.xz /

ENV LANG=en_US.UTF-8
ENV TZ=:/etc/localtime
ENV PATH=/var/lang/bin:/usr/local/bin:/usr/bin/:/bin:/opt/bin
ENV LD_LIBRARY_PATH=/var/lang/lib:/lib64:/usr/lib64:/var/runtime:/var/runtime/lib:/var/task:/var/task/lib:/opt/lib
ENV LAMBDA_TASK_ROOT=/var/task
ENV LAMBDA_RUNTIME_DIR=/var/runtime

WORKDIR /var/task

ENTRYPOINT ["/lambda-entrypoint.sh"]
