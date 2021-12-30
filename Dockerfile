### Stage_1
#указываю образ
FROM python:3-alpine3.14
RUN echo "Install python complete!"
#Указываю кто создал Dockerfile
MAINTAINER S.Yakauleu
#Указываю рабочую директорию
WORKDIR /home/itstep/Flask-Web-App-Tutorial
#Прокидываю необходимые файлы и папки внутрь
COPY . .
#### Stage_2
RUN pip3 install -r requirements.txt && \
    chmod +x main.py && \
    sh "whoami" && \
    echo "Install requirements complete!"
# Прокидываю исполняемые файлы
CMD [ "python", "main.py" ]
RUN echo "go 5000 port"
