FROM python:3.8-slim-buster
  
RUN mkdir /python-helloworld
COPY requirements.txt /python-helloworld

WORKDIR /python-helloworld
RUN pip install -r requirements.txt

COPY . /python-helloworld
CMD [ "python", "app.py" ]
