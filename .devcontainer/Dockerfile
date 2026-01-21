FROM mcr.microsoft.com/devcontainers/base:ubuntu-24.04

ENV DEBIAN_FRONTEND=noninteractive
ARG COOKCLI_VERSION=0.20.0

RUN apt-get update \
    && apt-get install -y --no-install-recommends \
        python3 \
        python3-pip \
        git \
        wget \
        texlive-full \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

RUN wget -q -O /tmp/cookcli.tar.gz \
        "https://github.com/cooklang/cookcli/releases/download/v${COOKCLI_VERSION}/cook-x86_64-unknown-linux-gnu.tar.gz" \
    && mkdir -p /tmp/cookcli \
    && tar -xzf /tmp/cookcli.tar.gz -C /tmp/cookcli \
    && install -m 0755 /tmp/cookcli/cook /usr/local/bin/cook \
    && rm -rf /tmp/cookcli /tmp/cookcli.tar.gz

WORKDIR /workspaces/cookbook

