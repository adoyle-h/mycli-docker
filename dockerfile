FROM python:3.7.3-alpine3.9 as compile

WORKDIR /mycli

RUN \
    cp /etc/apk/repositories /etc/apk/repositories.bak && \
    sed -i 's/dl-cdn.alpinelinux.org/mirrors.ustc.edu.cn/g' /etc/apk/repositories

# install GCC
RUN apk add build-base libffi-dev openssl-dev

RUN pip config set global.index-url https://pypi.tuna.tsinghua.edu.cn/simple
RUN pip install --user mycli==${VERSION}

FROM python:3.7.3-alpine3.9

LABEL maintainer="ADoyle <adoyle.h@gmail.com>"
WORKDIR /mycli

COPY --from=compile /root/.local /root/.local

ENV PATH=/root/.local/bin:$PATH

ENTRYPOINT ["mycli"]
