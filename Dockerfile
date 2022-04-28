FROM jupyter/datascience-notebook

USER root

RUN pip install torch
RUN pip install torchinfo
RUN pip install graphviz
RUN pip install hiddenlayer
RUN pip install torchviz
RUN apt-get update && apt-get install -y \
  graphviz

ADD --chown=jovyan ./Capital_One_PhD_Data_Challenge.ipynb /home/jovyan/
ADD --chown=jovyan ./start.sh /home/jovyan/

