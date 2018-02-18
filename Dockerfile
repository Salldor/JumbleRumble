FROM python:3.6

RUN git clone https://github.com/Salldor/JumbleRumble.git
WORKDIR ./JumbleRumble
RUN pip install -r requirements

EXPOSE 80

ENTRYPOINT ["gunicorn", "-b 127.0.0.1:80","--pythonpath='$PWD'", "-w", "2", "app:app"]
