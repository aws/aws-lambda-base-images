FROM scratch
ADD x86_64/4f7053fe18bde59afe53d41c401001896113b510ad7fe02564c037227ff14b90.tar.xz /
ADD x86_64/68870116602baa84d0d1c9b6c6e9826eae3129dc642a247ec4fe84331e903126.tar.xz /
ADD x86_64/6dbe4d557fad67e14ab292f649bd3154685e4be843f55bc46467917792afac94.tar.xz /
ADD x86_64/7a0a913d74338353ccfd20ad2ac6ec1898179c3cfa78de318a75226ad26c9b9e.tar.xz /
ADD x86_64/8299dd340845286014aa82c12f001b719741313fdd692cfb234d1b65dc97b83c.tar.xz /
ADD x86_64/9f76aec384ef285b3fb7706d752ca38979ea90e91e81228f0734134f3a3644bc.tar.xz /

ENV LANG=en_US.UTF-8
ENV TZ=:/etc/localtime
ENV PATH=/var/lang/bin:/usr/local/bin:/usr/bin/:/bin:/opt/bin
ENV LD_LIBRARY_PATH=/var/lang/lib:/lib64:/usr/lib64:/var/runtime:/var/runtime/lib:/var/task:/var/task/lib:/opt/lib
ENV LAMBDA_TASK_ROOT=/var/task
ENV LAMBDA_RUNTIME_DIR=/var/runtime

WORKDIR /var/task

ENTRYPOINT ["/lambda-entrypoint.sh"]
