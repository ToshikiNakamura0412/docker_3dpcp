FROM python:3.8.13-buster
ARG USERNAME=user
ARG USER_UID=1000
ARG USER_GID=$USER_UID

RUN ln -sf /usr/share/zoneinfo/Asia/Tokyo /etc/localtime

RUN groupadd --gid $USER_GID $USERNAME \
    && useradd --uid $USER_UID --gid $USER_GID -m $USERNAME \
    && apt-get update \
    && apt-get install -y sudo git vim \
    && echo $USERNAME ALL=\(root\) NOPASSWD:ALL > /etc/sudoers.d/$USERNAME \
    && chmod 0440 /etc/sudoers.d/$USERNAME
RUN apt-get update && apt-get install -y --no-install-recommends \
    bash-completion \
    tree \
    libffi-dev \
    libopencv-dev \
    libbz2-dev
RUN pip install open3d==0.14.1
RUN rm -rf /var/lib/apt/lists/*
RUN rm /etc/apt/apt.conf.d/docker-clean

ENV SHELL /bin/bash

USER $USERNAME
RUN git clone --recursive https://github.com/3d-point-cloud-processing/3dpcp_book_codes.git ~/3dpcp_book_codes

CMD ["/bin/bash"]
