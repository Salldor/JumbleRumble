FROM python:3.6

COPY requirements .

RUN apt-get update
RUN apt-get install git
RUN pip install -r requirements

RUN git clone https://github.com/Salldor/JumbleRumble.git
WORKDIR ./JumbleRumble

#ENTRYPOINT ["gunicorn", "--pythonpath='$PWD'", "-w", "2", "app:start"]
ENTRYPOINT ["/bin/bash"]
