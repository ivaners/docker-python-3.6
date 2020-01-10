FROM python:3.6

MAINTAINER Ivan Ivan <aiwen.ivan@outlook.com>

RUN apt-get update \
    && apt-get install -y \
        python-opencv \
        python-numpy \
        libzbar-dev \
    && rm -rf /var/lib/apt/lists/*

RUN pip install opencv-python
RUN pip install pyzbar
RUN pip install PyMySQL
RUN pip install redis
