FROM docker:19.03.8-dind

RUN apk add curl py-pip python3-dev python2-dev libffi-dev openssl-dev gcc libc-dev make bind-tools

RUN pip install pyrsistent==0.16.0

RUN pip install docker-compose

CMD ["/bin/sh"]