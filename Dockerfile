FROM nicklarsennz/jupyter-base:2.1.0

ENV DEBIAN_FRONTEND=noninteractive
COPY requirements.txt /tmp/requirements.txt

USER root

RUN apt update && python3 -m pip install --upgrade pip

RUN apt install -y libcairo2-dev gcc ffmpeg texlive-latex-recommended texlive-pictures texlive-latex-extra texlive-science texlive-font-utils texlive-extra-utils texlive-fonts-extra tzdata

RUN python3 -m pip install -r /tmp/requirements.txt

USER jupyter
