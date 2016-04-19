FROM selenium/node-firefox:latest

MAINTAINER Yuta Ohashi <ooohhhaaassshhhiii@gmail.com>

# Add Japanese Settings
RUN wget -q https://www.ubuntulinux.jp/ubuntu-ja-archive-keyring.gpg -O- | sudo apt-key add - && \
    wget -q https://www.ubuntulinux.jp/ubuntu-jp-ppa-keyring.gpg -O- | sudo apt-key add - && \
    sudo wget https://www.ubuntulinux.jp/sources.list.d/wily.list -O /etc/apt/sources.list.d/ubuntu-ja.list && \
    sudo apt-get update && \
    sudo apt-get install fonts-ipafont-gothic fonts-ipafont-mincho -y