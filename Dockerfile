FROM "python:3.8-alpine"

RUN set -eux \
    && apk update && apk add --no-cache \
      bash \
      git \
    && python3 -m pip install pre-commit

CMD ["/usr/local/bin/pre-commit"]
