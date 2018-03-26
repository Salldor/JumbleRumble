FROM python:3.6

#RUN git clone https://github.com/Salldor/JumbleRumble.git
COPY . /JumbleRumble
WORKDIR ./JumbleRumble
RUN pip install -r requirements

EXPOSE 80
CMD ["gunicorn", "-w2", "-b 0.0.0.0:80", "app:app"]