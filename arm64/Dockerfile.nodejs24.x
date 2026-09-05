FROM scratch

ADD 1419154c1d31da674c4528e1728e1d1e4c4e337d586dda9457cb545daf6f5266.tar.xz /
ADD 2dadd587674bac5b30bdad859aaceeaa5b344a81a447ef15b36072a85404a696.tar.xz /
ADD 4ea857c696d4f588756fc0b0b93932315b0dc8e14259c56a3690d6c8c77e5387.tar.xz /
ADD 5faab547cce918ea8fcf12697deb733c9e7e9e1ffa04a017291d29b11540588c.tar.xz /
ADD 9048c8919c93315cd89d68b60d854b5ae8750b7f6c966759ebc170c82d95992d.tar.xz /
ADD 9a02363de89b2d4fe81664821a3897160960ec1841e342c436f09babe960406e.tar.xz /

ENV LANG=en_US.UTF-8
ENV TZ=:/etc/localtime
ENV PATH=/var/lang/bin:/usr/local/bin:/usr/bin/:/bin:/opt/bin
ENV LD_LIBRARY_PATH=/var/lang/lib:/lib64:/usr/lib64:/var/runtime:/var/runtime/lib:/var/task:/var/task/lib:/opt/lib
ENV LAMBDA_TASK_ROOT=/var/task
ENV LAMBDA_RUNTIME_DIR=/var/runtime

WORKDIR /var/task

ENTRYPOINT ["/lambda-entrypoint.sh"]
