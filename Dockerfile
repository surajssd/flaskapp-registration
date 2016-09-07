FROM fedora:24

RUN dnf update -y && dnf install -y python-pip

COPY . /app
WORKDIR /app

RUN pip install -r requirements.txt

RUN export APP_SETTINGS="project.config.DevelopmentConfig" && \
    export APP_MAIL_SERVER=debugmail.io && \
    export APP_MAIL_PORT=25 && \
    export APP_MAIL_USE_TLS=true && \
    export APP_MAIL_USE_SSL=false && \
    export APP_MAIL_USERNAME=user && \
    export APP_MAIL_PASSWORD=password && \
    export SQLALCHEMY_DATABASE_URI= && \
    export SECRET_KEY=

RUN sh create.sh

EXPOSE 5000

CMD ["python", "manage.py", "runserver"]

