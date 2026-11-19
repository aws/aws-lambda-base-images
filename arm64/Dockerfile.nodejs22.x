FROM scratch

ADD 34be6dffd3effefc1d5638524f3bdafc45afb7bb86333cb14e6007fb30edc50c.tar.xz /
ADD 45f71ec84dbfc2e108c76fad6972e160e8d53ff85447d0742d04854bd36a07b3.tar.xz /
ADD 5a2993b1c31cdbb60eb213e6d5b499c8c9bcae001bbf8842d84b0e3eb6a845f2.tar.xz /
ADD ad041d2c068303b7f08bac808859a38454d1d16960268ea74c556db7dd734f1e.tar.xz /
ADD bb385344d847608b350b9500eee1438ddd7f6dc888cd6c77b25ef53142f9e00d.tar.xz /
ADD f8d0beaeeb623acc85c55242f9680d8e1dbefa6fd68b6da121b49e0d513f1e16.tar.xz /

ENV LANG=en_US.UTF-8
ENV TZ=:/etc/localtime
ENV PATH=/var/lang/bin:/usr/local/bin:/usr/bin/:/bin:/opt/bin
ENV LD_LIBRARY_PATH=/var/lang/lib:/lib64:/usr/lib64:/var/runtime:/var/runtime/lib:/var/task:/var/task/lib:/opt/lib
ENV LAMBDA_TASK_ROOT=/var/task
ENV LAMBDA_RUNTIME_DIR=/var/runtime

WORKDIR /var/task

ENTRYPOINT ["/lambda-entrypoint.sh"]
