FROM ubuntu:16.04
#MAINTANER Gaurav Pundir "pundirgrv1993@gmail.com"
RUN apt-get update -y && apt-get install -y python3 python3-pip python3-setuptools
RUN mkdir -p /app
COPY ./requirements.txt /app/requirements.txt
WORKDIR /app
RUN pip3 install -r requirements.txt
COPY ./src/* /app
CMD [ "python3","app.py" ]
