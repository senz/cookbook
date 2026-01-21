FROM mcr.microsoft.com/devcontainers/base:ubuntu-24.04

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update \
    && apt-get install -y --no-install-recommends \
        python3 \
        python3-pip \
        git \
        wget \
        texlive-full \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

WORKDIR /workspaces/cookbook

