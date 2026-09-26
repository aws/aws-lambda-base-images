FROM scratch
ADD x86_64/1d144c478255f49b2f5b343a6b0ada62629de91bdbdbaac5f4bbaf2b19c39592.tar.xz /
ADD x86_64/7e9c2b35916a45c497d417027142ea127c66ef1bbd102ffdc283da7c8527e61f.tar.xz /
ADD x86_64/8b8e76f1e41ca3751ccdd9ea48fe6511da0e5f4ee96d8c0052eeddcd65cf84a6.tar.xz /
ADD x86_64/aa26155591afbb8550db59539492cd63fbad4e8f517fffb6abf5799284318dcf.tar.xz /
ADD x86_64/c914f08cd9bffb606b199952fa0fb3a3a049c9a14c4c392ddba9d9f9cca1147d.tar.xz /
ADD x86_64/ee958e0bcbd53cc0337d1fe551967c715c9a70f368f94f73ae92e6a174fdc00f.tar.xz /

ENV LANG=en_US.UTF-8
ENV TZ=:/etc/localtime
ENV PATH=/var/lang/bin:/usr/local/bin:/usr/bin/:/bin:/opt/bin
ENV LD_LIBRARY_PATH=/var/lang/lib:/lib64:/usr/lib64:/var/runtime:/var/runtime/lib:/var/task:/var/task/lib:/opt/lib
ENV LAMBDA_TASK_ROOT=/var/task
ENV LAMBDA_RUNTIME_DIR=/var/runtime

WORKDIR /var/task

ENTRYPOINT ["/lambda-entrypoint.sh"]
