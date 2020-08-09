FROM python:slim

ARG GIT_COMMIT=unknown
ARG BUILD_DATE=unknown
ARG VERSION=unknown
ARG GIT_URL=unknown
ARG AUTHORITATIVE_SOURCE=unknown

LABEL description="Docker image to use for the GitLab CLI interaction" \
      summary="GitLab CLI utility" \
      maintainer="Savitoj Singh <savsingh@redhat.com>" \
      vendor="EXD Platforms Infra CIP - Red Hat, Inc." \
      distribution-scope="Public" \
      vcs-type="git" \
      vcs-url=$GIT_URL \
      vcs-ref=$GIT_COMMIT \
      build-date=$BUILD_DATE \
      version=$VERSION \
      authoritative-source-url=$AUTHORITATIVE_SOURCE

WORKDIR /root/

ADD python-gitlab.cfg .python-gitlab.cfg

RUN pip install python-gitlab && apt-get update && apt-get install curl ldap-utils -y && update-ca-certificates

ENV REQUESTS_CA_BUNDLE /etc/ssl/certs/ca-certificates.crt
