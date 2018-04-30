FROM lucro/ruby-build:2.4.4-alpine
MAINTAINER Lucro Engineering <dev@lucro.com>

RUN apk --update --no-cache add \
    git \
    chromium-chromedriver \
    chromium \
    less \
    && rm -rf /var/lib/apt/lists/* \
    /var/cache/apk/* \
    /usr/lib/node_modules/npm/scripts

RUN mkdir -p /usr/src/app

CMD [ "/bin/sh" ]
