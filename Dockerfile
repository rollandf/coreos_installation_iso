FROM python:2.7

COPY ./coreos-installer /
COPY ./install_process.py /

ARG COREOS_IMAGE=<COREOS IMAGE>
ENV COREOS_IMAGE=$COREOS_IMAGE
COPY ./$COREOS_IMAGE /

RUN pip install boto3
RUN pip install botocore

CMD python install_process.py
