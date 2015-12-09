FROM r-base

MAINTAINER "Alex Zvoleff" azvoleff@conservation.org

RUN apt-get update \
    && apt-get install -t unstable -y --no-install-recommends \
    libgdal1-dev libgdal-dev gdal-bin \
    proj proj-bin proj-data libproj-dev \
    libcurl4-openssl-dev \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

ADD R_setup.R /R_setup.R
RUN /usr/bin/Rscript /R_setup.R
