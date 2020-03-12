FROM python:2.7

COPY ./coreos-installer /
COPY ./install_process.py /
COPY ./fedora-coreos-31.20200210.3.0-live.x86_64.iso /

RUN pip install boto3
RUN pip install botocore

CMD python install_process.py
