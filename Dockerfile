### Stage_1
# indicate images
FROM python:3-alpine3.14
RUN echo "Install python complete!"
# indicate who created Dockerfile
MAINTAINER S.Yakauleu
# indicate work directory
WORKDIR /home/itstep/Flask-Web-App-Tutorial
# copy files and folders inside the container
COPY . .
#### Stage_2
# install required libraries
RUN pip3 install -r requirements.txt && \
    chmod +x main.py && \
    echo "Install requirements complete!"
# add executable file
CMD [ "python", "main.py" ]
RUN echo "go 5000 port"
