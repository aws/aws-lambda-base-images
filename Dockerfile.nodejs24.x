FROM scratch
ADD x86_64/1f13d39c86f36fda07045499391445a8e13acb8fc5b1cb52bbe06135ae461dcb.tar.xz /
ADD x86_64/360978106edd426aa85754a771fee55735ed0e6927c4050249bf7e80e01e3fd7.tar.xz /
ADD x86_64/a49949c001126f637f40761494b098ff8fc8d7f87cab9d11ad42751308bd3adc.tar.xz /
ADD x86_64/a5d7e972bf2d066f6db4c9294311f69e39256ab0afe8796139a9974a9ccb39e9.tar.xz /
ADD x86_64/b602ec07b29d094dece15e5dc8a82f6ffa5e7a6a4e91a479a3faff6a0119ca43.tar.xz /
ADD x86_64/eca19fa99794abbf99b9b4eb13f2f116db38383d87ca3230d882656dfd9748ca.tar.xz /

ENV LANG=en_US.UTF-8
ENV TZ=:/etc/localtime
ENV PATH=/var/lang/bin:/usr/local/bin:/usr/bin/:/bin:/opt/bin
ENV LD_LIBRARY_PATH=/var/lang/lib:/lib64:/usr/lib64:/var/runtime:/var/runtime/lib:/var/task:/var/task/lib:/opt/lib
ENV LAMBDA_TASK_ROOT=/var/task
ENV LAMBDA_RUNTIME_DIR=/var/runtime

WORKDIR /var/task

ENTRYPOINT ["/lambda-entrypoint.sh"]
