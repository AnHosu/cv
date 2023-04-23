FROM debian:buster-slim

RUN apt-get update && \
    apt-get install --no-install-recommends -y \
        biber \
        latexmk \
        texlive-full \
        git-all && \
        rm -rf /var/lib/apt/lists/*

WORKDIR /tmp