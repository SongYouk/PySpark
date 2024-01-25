FROM spark:3.5.0-scala2.12-java11-ubuntu

USER root

RUN set -ex; \
    apt-get update; \
    apt-get install -y python3 python3-pip; \
    apt-get install -y r-base r-base-dev; \
    apt-get install -y git && \
    rm -rf /var/lib/apt/lists/*

RUN pip3 install --upgrade pip
RUN pip3 install pyspark

ENV R_HOME /usr/lib/R

# Modify permissions for the spark user
RUN mkdir -p /home/spark && \
    chown -R spark:spark /home/spark

# RUN wget https://packages.microsoft.com/config/ubuntu/20.04/packages-microsoft-prod.deb \
#     && dpkg -i packages-microsoft-prod.deb \
#     && apt-get update \
#     && apt-get install -y blobfuse

# RUN apt-get update && apt install nano

# RUN apt-get update && apt-get install libcurl3-gnutls && apt-get install -y fuse

# USER spark