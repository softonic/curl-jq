FROM alpine:3.18.2@sha256:82d1e9d7ed48a7523bdebc18cf6290bdb97b82302a8a9c27d4fe885949ea94d1

# `curl` is required to make http requests
# `jq` is required to parse and format JSON
# `bash` is required to allow stnadardized scripting in bash
# `git` is required to interact with git repositories
# `coreutils` is required for using functions like `date -d`
# hadolint ignore=DL3018
RUN apk update &&       \
    apk add --no-cache curl jq bash git coreutils zip openssh &&  \
    apk add --update --no-cache py-pip && pip install --no-cache-dir yq==2.4.1 && \
    rm -rf /var/cache/apk/*

CMD [ "bash" ]
