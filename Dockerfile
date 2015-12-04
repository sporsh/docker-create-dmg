FROM ubuntu

RUN apt-get update
RUN apt-get install -y git autoconf build-essential cmake libssl-dev zlib1g-dev

# Build libmdg-hfsplus
RUN git clone --depth=1 https://github.com/planetbeing/libdmg-hfsplus.git
WORKDIR libdmg-hfsplus
RUN cmake -DCMAKE_INSTALL_PREFIX=/usr/local/bin .
RUN make
RUN make install

ENTRYPOINT ["/usr/local/bin/dmg"]
