FROM openjdk:8-alpine

MAINTAINER Dosec <bailm@dosec.cn>

RUN sed -i 's/dl-cdn.alpinelinux.org/mirrors.aliyun.com/g' /etc/apk/repositories && \
        apk add --no-cache bash tzdata && \
        ln -sf /usr/share/zoneinfo/Asia/Shanghai /etc/localtime && \
        echo "Asia/Shanghai" > /etc/timezone

EXPOSE 8080

# ENTRYPOINT ["/dosec/bin/dosec_app"]
CMD ["/zfile/bin/start.sh"]

COPY zfile /zfile
