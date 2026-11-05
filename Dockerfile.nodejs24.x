FROM scratch
ADD x86_64/2ec2d63fa8f6e6d92f5a6298f84a3ae8149e2634e59eb2ace96feb0e81f0c616.tar.xz /
ADD x86_64/449508fa7d27f538f144810d5955c7a89668cc12c8411535165b07d0c810d6ab.tar.xz /
ADD x86_64/55d0225afd8b2f744ab37a271e1f8aa8d5256986b77771ab3e281c350a29817f.tar.xz /
ADD x86_64/6e92d6459e6d67b4cd845e17324472255133a6e42e08df7110a68c4f6fb2340e.tar.xz /
ADD x86_64/83aa25dc0be6848aa592aa7548fd3c283398403de52eaf7767eaa8c3611125e7.tar.xz /
ADD x86_64/96794fc66ea7c7612020b192d1cba6d6f62402fc4dc50287fb301fc035f39ba4.tar.xz /

ENV LANG=en_US.UTF-8
ENV TZ=:/etc/localtime
ENV PATH=/var/lang/bin:/usr/local/bin:/usr/bin/:/bin:/opt/bin
ENV LD_LIBRARY_PATH=/var/lang/lib:/lib64:/usr/lib64:/var/runtime:/var/runtime/lib:/var/task:/var/task/lib:/opt/lib
ENV LAMBDA_TASK_ROOT=/var/task
ENV LAMBDA_RUNTIME_DIR=/var/runtime

WORKDIR /var/task

ENTRYPOINT ["/lambda-entrypoint.sh"]
