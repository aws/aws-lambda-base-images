FROM scratch

ADD 1bf6779adb5f51bf4a651d8ac477ad8a56ea86ac3b8a6add11a2479f2d524b18.tar.xz /
ADD 5152e1691ef3f6a73ed7730c54d8ba51b0cfb9718f202af9f0056309ba4d50ad.tar.xz /
ADD 8a846884573c4b385f1a846be2fa535c3ebcfa17d9d66281656727284f35a3f0.tar.xz /
ADD 8f995842c2983c9c7237a0dd93275ac999df560c8fe799b7421130ec76984b00.tar.xz /
ADD 94d812b4b4f7914b0e4d16ac9cc85e71daeeee6e3b8d5a25c3be935d9d67ce85.tar.xz /
ADD f50d5a0bde2d3d7e2172a3598fb3c3ad95a86601febd7d041747f64591c1bc83.tar.xz /

ENV LANG=en_US.UTF-8
ENV TZ=:/etc/localtime
ENV PATH=/var/lang/bin:/usr/local/bin:/usr/bin/:/bin:/opt/bin
ENV LD_LIBRARY_PATH=/var/lang/lib:/lib64:/usr/lib64:/var/runtime:/var/runtime/lib:/var/task:/var/task/lib:/opt/lib
ENV LAMBDA_TASK_ROOT=/var/task
ENV LAMBDA_RUNTIME_DIR=/var/runtime

WORKDIR /var/task

ENTRYPOINT ["/lambda-entrypoint.sh"]
