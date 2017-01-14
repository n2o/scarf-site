FROM clojure:alpine
MAINTAINER Christian Meter <cmeter@googlemail.com>

ENV dir /code

RUN apk add --update ruby && \
    (gem install sass; exit 0) && \
    mkdir ${dir}

WORKDIR ${dir}
ADD . ${dir}

CMD ["lein", "run"]
