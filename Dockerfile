FROM ubuntu:16.04
MAINTAINER Daniel Standage <daniel.standage@gmail.com>

RUN apt-get update && apt-get install -y python-pip wget
RUN pip install --upgrade setuptools pip
RUN pip install tag==0.3.3
CMD bash
