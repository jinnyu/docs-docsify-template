FROM nginx:1.22.0

ENV TZ=Asia/Shanghai
WORKDIR /
RUN mkdir docs
ADD ./ /docs

EXPOSE 80

CMD [ "nginx", "-c", "/docs/deploy/nginx.conf", "-g", "daemon off;" ]

