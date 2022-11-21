# dockerfile is commiting layers for backend

FROM python:3.6

RUN install python3-pip
RUN pip3 install mysqlclient

RUN mkdir /new_chatapplication 

COPY new_chatapp /new_chatapplication 

WORKDIR /new_chatapplication 


RUN pip3 install -r new_chatapplication/requirements.txt


EXPOSE 8000



WORKDIR /new_chatapplication/fundoo/

ENTRYPOINT  python3 manage.py runserver 0.0.0.0:8000

