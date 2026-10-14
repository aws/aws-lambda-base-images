FROM scratch

ADD 249d78f053de02db4dee9fe09683b0c4558359f731db132cce083cceb580494f.tar.xz /
ADD 4228e6d78506acdc774bbbeba0f6d03bafb8e301d4778e696bcc712e91c2bea8.tar.xz /
ADD 4517cb4b5eed1fd9085e7f9b27f15dda47e5534aa83aa9768c05005f96282e9e.tar.xz /
ADD 87e163913e145c386c8602609125f86df15b754a3c890d63a44867015b3b46f5.tar.xz /
ADD c914f08cd9bffb606b199952fa0fb3a3a049c9a14c4c392ddba9d9f9cca1147d.tar.xz /
ADD f54414bf63a323b0ef2f89c97e6298fc987a4fdd23e81ca4ef99c06c1ca43243.tar.xz /

ENV LANG=en_US.UTF-8
ENV TZ=:/etc/localtime
ENV PATH=/var/lang/bin:/usr/local/bin:/usr/bin/:/bin:/opt/bin
ENV LD_LIBRARY_PATH=/var/lang/lib:/lib64:/usr/lib64:/var/runtime:/var/runtime/lib:/var/task:/var/task/lib:/opt/lib
ENV LAMBDA_TASK_ROOT=/var/task
ENV LAMBDA_RUNTIME_DIR=/var/runtime

WORKDIR /var/task

ENTRYPOINT ["/lambda-entrypoint.sh"]
