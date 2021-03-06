FROM balenalib/raspberry-pi-debian-python:3.7-buster-run
RUN apt-get update && \
    apt-get -y install python3-rpi.gpio && \
    rm -rf /var/lib/apt/lists/*
WORKDIR /usr/app
COPY ./requirements.txt .
RUN pip install -r requirements.txt
COPY 3dxmastree.py /usr/app
RUN chmod +x 3dxmastree.py
CMD ["python", "3dxmastree.py"]
