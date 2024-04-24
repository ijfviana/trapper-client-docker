FROM ubuntu:22.04 

RUN apt-get update -y
RUN apt-get install git python3 python3-venv libgl1-mesa-glx libgles2-mesa libegl1-mesa libmtdev1 -y
RUN mkdir /app
RUN cd /app && git clone https://gitlab.com/oscf/trapper-client.git && cd trapper-client 
WORKDIR /app/trapper-client 
RUN git checkout -b develop && git pull origin develop 
RUN  python3 -m venv env 
RUN . ./env/bin/activate && pip install -r reqs.txt && garden install filebrowser --kivy 
COPY   run.sh run.sh
RUN chmod +x run.sh
CMD ["/bin/bash", "/app/trapper-client/run.sh"]
