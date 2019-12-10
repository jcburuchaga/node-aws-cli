 #para ejecutar test e2e node se necesita la version jessie, no sirve la alpine
FROM node:10.15.3

#aws cli install
RUN apt-get update \
	&& apt-get install -y python-pip curl\
	&& pip install awscli \
    && rm -rf /var/lib/apt/lists/*

ENTRYPOINT ["sh", "-c", "ls"]