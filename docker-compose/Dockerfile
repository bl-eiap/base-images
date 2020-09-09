FROM docker:19.03.8-dind

RUN apk add py-pip python3-dev libffi-dev openssl-dev gcc libc-dev make bind-tools

RUN pip3 install docker-compose

CMD ["/bin/sh"]