FROM python:latest

RUN mkdir -p /telegram-bot
ADD . /telegram-bot
WORKDIR /telegram-bot

COPY main.py /telegram-bot

RUN ls /telegram-bot

RUN apt-get update
RUN apt-get install -y python3

RUN chmod +x /telegram-bot/main.py
CMD python3 /telegram-bot/main.py
