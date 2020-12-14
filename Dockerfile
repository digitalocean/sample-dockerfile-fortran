from ubuntu:latest
ADD ./* src/
WORKDIR /src
RUN apt update && apt install gfortran python3 python3-pip -y && apt clean
RUN pip3 install -r requirements.txt
RUN gfortran HelloWorld.f08 -o HelloWorld
RUN gfortran OWorld.f08 -o OWorld
CMD gunicorn --worker-tmp-dir /dev/shm --config gunicorn_config.py app:app
 
