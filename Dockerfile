FROM nicklarsennz/jupyter-base:latest

USER root

COPY requirements.txt /tmp/requirements.txt
RUN apt update && \
    apt install -y libcairo2-dev gcc ffmpeg texlive-latex-extra && \
    pip install -r /tmp/requirements.txt

RUN apt install -y texlive-fonts-extra

USER jupyter   

USER root

RUN apt-get install -y texlive-latex-recommended texlive-pictures texlive-latex-extra texlive-science texlive-font-utils texlive-extra-utils

USER jupyter