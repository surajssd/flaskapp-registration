FROM fedora:24

RUN dnf update -y && \
    dnf install -y python-pip postgresql-devel redhat-rpm-config \
                   gcc python-devel

ADD https://raw.githubusercontent.com/vishnubob/wait-for-it/master/wait-for-it.sh /usr/local/bin/wait-for-it.sh

RUN pip install Flask==0.10.1 Flask-Bcrypt==0.6.0 \
                Flask-DebugToolbar==0.9.0 Flask-Login==0.2.11 \
                Flask-Mail==0.9.1 Flask-Migrate==1.2.0 \
                Flask-SQLAlchemy==2.0 Flask-Script==2.0.5 \
                Flask-Testing==0.4.2 \
                Flask-WTF==0.10.2 \
                Jinja2==2.7.3 \
                Mako==1.0.0 \
                MarkupSafe==0.23 \
                SQLAlchemy==0.9.8 \
                WTForms==2.0.1 \
                Werkzeug==0.9.6 \
                alembic==0.6.7 \
                blinker==1.3 \
                coverage==4.0a1 \
                ecdsa==0.11 \
                httplib2==0.9 \
                itsdangerous==0.24 \
                paramiko==1.15.1 \
                psycopg2==2.5.4 \
                py-bcrypt==0.4 \
                pycrypto==2.6.1 \
                requests==2.6.2


RUN chmod +x /usr/local/bin/wait-for-it.sh && mkdir -p /app

WORKDIR /app
COPY . /app


EXPOSE 5000

