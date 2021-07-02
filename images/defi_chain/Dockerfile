ARG TARGET=arm-linux-gnueabihf

FROM ubuntu:20.04 as builder-base
ARG BUILD_VERSION

ENV DEBIAN_FRONTEND=noninteractive
ARG TARGET
LABEL org.defichain.name="defichain-builder-base"
LABEL org.defichain.arch=${TARGET}

RUN apt update && apt dist-upgrade -y
RUN apt install -y software-properties-common build-essential libtool autotools-dev automake \
pkg-config bsdmainutils python3 libssl-dev libevent-dev libboost-system-dev \
libboost-filesystem-dev libboost-chrono-dev libboost-test-dev libboost-thread-dev \
libminiupnpc-dev libzmq3-dev libqrencode-dev curl cmake \
g++-arm-linux-gnueabihf binutils-arm-linux-gnueabihf

FROM builder-base as depends-builder
ARG TARGET
LABEL org.defichain.name="defichain-depends-builder"
LABEL org.defichain.arch=${TARGET}
RUN echo ${BUILD_VERSION:-$(curl -sL https://api.github.com/repos/DefiCh/ain/releases/latest | grep .tag_name | tr -d " \"tag_nme:,v")} > ~/.chain_version
RUN mkdir -p /usr/src/defich && \
 cd /usr/src/defich && \
 curl -L https://github.com/DeFiCh/ain/archive/refs/tags/v$(cat ~/.chain_version).tar.gz > ain.tar.gz && \
 tar xvzf ain.tar.gz && \
 ln -s /usr/src/defich/ain-$(cat ~/.chain_version) /usr/src/defich/ain

WORKDIR /usr/src/defich/ain/depends
RUN make HOST=${TARGET} NO_QT=1

WORKDIR /usr/src/defich/ain/
RUN ./autogen.sh

RUN ./configure --prefix=`pwd`/depends/${TARGET} \
    --enable-glibc-back-compat \
    --enable-reduce-exports \
    LDFLAGS="-static-libstdc++"

RUN make
ENV PATH=/usr/src/defich/ain/src:$PATH
FROM ubuntu:20.04
ARG TARGET
LABEL org.defichain.name="defichain"
LABEL org.defichain.arch=${TARGET}

WORKDIR /app

COPY --from=depends-builder /usr/src/defich/ain/src/defid ./
COPY --from=depends-builder /usr/src/defich/ain/src/defi-cli ./
ENV PATH=/app:$PATH

