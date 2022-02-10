FROM alpine

WORKDIR /root

RUN apk update \
    && apk add \
    git \
    neovim \
    && mkdir project


COPY ./home/ /root/
COPY ./.editorconfig /root/

ENTRYPOINT [ "sh" ]
