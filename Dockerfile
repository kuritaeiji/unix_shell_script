FROM ubuntu:20.04

ARG UID
ARG USERNAME

ARG DEBIAN_FRONTEND=noninteractive
ENV TZ=Europe/Moscow

RUN apt update && \
    apt install git binutils build-essential \
    sysstat strace man manpages-dev tree sudo mlocate vim lldb \
    curl pv systemctl rsync zip net-tools iputils-ping dnsutils netcat ftp -y && \
    yes | unminimize

RUN useradd -m -s /bin/bash -u $UID $USERNAME

RUN echo "${USERNAME} ALL=(ALL) NOPASSWD:ALL" >> /etc/sudoers

WORKDIR /home/$USERNAME

USER $USERNAME