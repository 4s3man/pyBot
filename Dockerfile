FROM ubuntu:bionic

RUN apt-get update -y \
    && apt-get -y install firefox \
    && apt-get -y install python3-pip \
    && pip3 install selenium

CMD bash
