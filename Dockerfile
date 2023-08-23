FROM --platform=$BUILDPLATFORM nginxinc/nginx-unprivileged:1.25.1-alpine AS unprivileged
#FROM nginxinc/nginx-unprivileged:1.25.1-alpine AS unprivileged
ARG TARGETPLATFORM
EXPOSE 8090
WORKDIR /var/www/mender-gui/dist
ARG GIT_COMMIT_TAG
ENV GIT_COMMIT_TAG=$GIT_COMMIT_TAG
#COPY httpd.conf /etc/nginx/nginx.conf
CMD ["nginx"]

