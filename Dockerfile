FROM python:2.7

ARG WORK_DIR=/data

RUN mkdir $WORK_DIR
RUN chmod 777 $WORK_DIR

ARG COREOS_IMAGE
COPY ./$COREOS_IMAGE $WORK_DIR
RUN chmod 666 $WORK_DIR/$COREOS_IMAGE
ENV COREOS_IMAGE=$WORK_DIR/$COREOS_IMAGE

COPY ./coreos-installer $WORK_DIR
COPY ./install_process.py $WORK_DIR

ENV WORK_DIR=$WORK_DIR

RUN pip install boto3
RUN pip install botocore

CMD python /data/install_process.py
