FROM ubuntu:xenial

RUN apt-get update \
  && apt-get install -y --no-install-recommends sudo git ca-certificates build-essential \
  && rm -rf /var/lib/apt/lists/*

RUN useradd -m meltdown && \
    echo 'meltdown:nwodtlem' | chpasswd
RUN echo 'meltdown ALL=(ALL) NOPASSWD:ALL' >> /etc/sudoers

USER meltdown

RUN cd $HOME \
  && git clone https://github.com/IAIK/meltdown \
  && cd meltdown \
  && make
