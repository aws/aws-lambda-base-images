FROM scratch
ADD x86_64/570fe915071fb2d81a1fac5df14b3c9648dfc69e1d6e0f127f0ed757e60f2795.tar.xz /
ADD x86_64/6679df8835d4f4116248e209f5256fc70689047f6606f7df2212430055bfa8eb.tar.xz /
ADD x86_64/9e6e586bcbd9d7d4eb8fb63f65c379daf98a1cd40c4dfb2aaeb40d54236604b7.tar.xz /
ADD x86_64/9f76aec384ef285b3fb7706d752ca38979ea90e91e81228f0734134f3a3644bc.tar.xz /
ADD x86_64/b7492ef39d9846f9cf991f521c33fb172382d91644fa82a174fa97f77a24f0e1.tar.xz /
ADD x86_64/f6a750cd2d3de5b39e487de40c2c59a82eeba82adac845a915faf3ae04456891.tar.xz /

ENV LANG=en_US.UTF-8
ENV TZ=:/etc/localtime
ENV PATH=/var/lang/bin:/usr/local/bin:/usr/bin/:/bin:/opt/bin
ENV LD_LIBRARY_PATH=/var/lang/lib:/lib64:/usr/lib64:/var/runtime:/var/runtime/lib:/var/task:/var/task/lib:/opt/lib
ENV LAMBDA_TASK_ROOT=/var/task
ENV LAMBDA_RUNTIME_DIR=/var/runtime

WORKDIR /var/task

ENTRYPOINT ["/lambda-entrypoint.sh"]
