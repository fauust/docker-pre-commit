FROM "python:3.8-alpine"

RUN set -eux \
    && apk update && apk add --no-cache \
      python3-dev py3-pip gcc git curl build-base \
      autoconf automake py3-cryptography linux-headers \
      musl-dev libffi-dev openssl-dev openssh bash docker-cli \
    && python3 -m pip install pre-commit

CMD ["/usr/local/bin/pre-commit"]
