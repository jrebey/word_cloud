FROM gitpod/workspace-full

RUN sudo apt-get update && sudo apt-get install -y \
    python3-pil \
 && sudo rm -rf /var/lib/apt/lists/*

ENV HOME=/home/gitpod
WORKDIR $HOME
USER gitpod

RUN pip3 install --no-cache-dir wordcloud

USER root
