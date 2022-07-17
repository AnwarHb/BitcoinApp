FROM python:3.10.5-alpine3.16

WORKDIR /code

COPY ./requirements.txt /code/requirements.txt

RUN pip install -r requirements.txt

COPY . .

EXPOSE 5000

CMD [ "python", "./bitcoinApp.py" ]