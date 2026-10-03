FROM scratch

ADD 43c18844746d29fd8f145b2895fd74bb0ff9fa3ccb65613eee267130b6d52a91.tar.xz /
ADD 71da7956e982f255f1695cfd23a85ceb08a9c20a203cbf6c71e834f81af2b15c.tar.xz /
ADD 7e04fe65f221b23b3e76528b33aa1b3d1a28c6caca0f59b143b6a7e9119a9825.tar.xz /
ADD 89accad190312adde2636f942ba1586323f415a165621fe802fb2b1a9cd8c15b.tar.xz /
ADD 94d812b4b4f7914b0e4d16ac9cc85e71daeeee6e3b8d5a25c3be935d9d67ce85.tar.xz /
ADD d553a24282ce8b940db3ecbb9dc68b1866bcff041958ecc220e00dab45726a40.tar.xz /

ENV LANG=en_US.UTF-8
ENV TZ=:/etc/localtime
ENV PATH=/var/lang/bin:/usr/local/bin:/usr/bin/:/bin:/opt/bin
ENV LD_LIBRARY_PATH=/var/lang/lib:/lib64:/usr/lib64:/var/runtime:/var/runtime/lib:/var/task:/var/task/lib:/opt/lib
ENV LAMBDA_TASK_ROOT=/var/task
ENV LAMBDA_RUNTIME_DIR=/var/runtime

WORKDIR /var/task

ENTRYPOINT ["/lambda-entrypoint.sh"]
