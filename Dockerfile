FROM python:3

WORKDIR /data

RUN pip install django==3.2
RUN pip install setuptools

COPY . /data

#RUN python3 manage.py migrate

EXPOSE 8000
ENTRYPOINT [python3]

CMD ["manage.py","runserver","0.0.0.0:8000"]

