# dockerfile is commiting layers for backend

FROM python:3.6
RUN apt-get update
RUN apt-get install --yes python3-pip
RUN mkdir /new_chatapplication
COPY new_chatapp /new_chatapplication
WORKDIR /new_chatapplication
RUN pip3 install -r requirements.txt
RUN pip3 install mysqlclient

EXPOSE 8000
WORKDIR /new_chatapplication/fundoo/
ENTRYPOINT  python3 manage.py runserver 0.0.0.0:8000

