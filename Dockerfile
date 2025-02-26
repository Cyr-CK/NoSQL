FROM python:3.10
FROM continuumio/anaconda3

RUN conda install -c conda-forge mongo-tools

COPY requirements.txt /app/requirements.txt

RUN pip install -r /app/requirements.txt
WORKDIR /home/jovyan/work

EXPOSE 9999
EXPOSE 2424




# RUN ["mongoimport", "--db", "MovieLens", "--collection", "movies", "--file", "data/movielens_movies.json"]
# RUN ["mongoimport", "--db", "MovieLens", "--collection", "users", "--file", "data/movielens_users.json"]

# COPY . .