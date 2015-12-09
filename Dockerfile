FROM r-base

MAINTAINER "Alex Zvoleff" azvoleff@conservation.org

ENV COMMIT_HASH 2f3b1017d5d0d9a5ea9662d839926f035388a0b3

RUN apt-get update \
    && apt-get install -t unstable -y --no-install-recommends \
    curl \
    gdal-bin \
    libgdal1-dev \
    libgdal-dev \
    libproj-dev \
    libcurl4-openssl-dev \
    proj-bin \
    proj-data \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

ADD R_setup.R /R_setup.R
RUN /usr/bin/Rscript /R_setup.R

RUN curl -sSL https://github.com/ConservationInternational/vs-indicators-calc/archive/$COMMIT_HASH.tar.gz \
        | tar -v -C /usr/src -xz

ADD data /data
