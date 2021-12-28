FROM python:latest
#указываю образ latest согласно инструкции с форка
MAINTAINER S.Yakauleu
#Указываю кто создал Dockerfile
WORKDIR /home/itstep/Flask-Web-App-Tutorial
#Указываю рабочую директорию
COPY ./website /home/itstep/Flask-Web-App-Tutorial/website
COPY ./requirements.txt /home/itstep/Flask-Web-App-Tutorial
COPY ./main.py /home/itstep/Flask-Web-App-Tutorial
#Прокидываю необходимые файлы и папки внутрь
RUN pip3 install -r requirements.txt
#Добавляю в запуск согласно инструкции с форка
CMD [ "python", "main.py" ]
# Прокидываю исполняемые файлы
