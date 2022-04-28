FROM jupyter/datascience-notebook

RUN pip install torch
RUN pip install torchinfo
RUN pip install graphviz

ADD --chown=jovyan ./Capital_One_PhD_Data_Challenge.ipynb /home/jovyan/
ADD --chown=jovyan ./start.sh /home/jovyan/

