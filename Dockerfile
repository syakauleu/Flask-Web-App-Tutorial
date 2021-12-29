#указываю образ latest согласно инструкции с форк
FROM python:latest
#Указываю кто создал Dockerfile
MAINTAINER S.Yakauleu
#Указываю рабочую директорию
WORKDIR /home/itstep/Flask-Web-App-Tutorial
#Прокидываю необходимые файлы и папки внутрь
COPY ./website /home/itstep/Flask-Web-App-Tutorial/website
COPY ./requirements.txt /home/itstep/Flask-Web-App-Tutorial
COPY ./main.py /home/itstep/Flask-Web-App-Tutorial
RUN pip3 install -r requirements.txt
# Прокидываю исполняемые файлы
CMD [ "python", "main.py" ]
