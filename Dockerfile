FROM node:14-slim
MAINTAINER cy@cyicy.cn
LABEL org.opencontainers.image.authors="cy@cyicy.cn"
COPY start.sh /root/start.sh
RUN npm config set registry https://registry.npm.taobao.org \
    && yarn config set registry https://registry.npm.taobao.org \
    && npm i -g --unsafe-perm mirror-config-china --registry=https://registry.npm.taobao.org \
    && npm i -g --unsafe-perm grunt-cli \
    && npm i -g --unsafe-perm gulp-cli \
    && npm i -g --unsafe-perm npm \
    && npm cache clean -f \
    && node --version | tee -a build.env \
    && npm --version | tee -a build.env \
    && yarn --version | tee -a build.env \
    && gulp --version | tee -a build.env \
    && grunt --version | tee -a build.env \
    && chmod +x /root/start.sh

CMD [ "/root/start.sh"]