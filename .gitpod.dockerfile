FROM gitpod/workspace-full

RUN apt-get update && apt-get install -y \
    python3-pil
 && rm -rf /var/lib/apt/lists/*

ENV HOME=/home/gitpod
WORKDIR $HOME
USER gitpod

RUN pip3 install --no-cache-dir wordcloud

USER root
