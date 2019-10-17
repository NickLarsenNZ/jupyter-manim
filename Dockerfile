FROM nicklarsennz/jupyter-base:latest

USER root

COPY requirements.txt /tmp/requirements.txt
RUN apt update && \
    apt install -y libcairo2-dev gcc ffmpeg && \
    pip install -r /tmp/requirements.txt

USER jupyter