 #para ejecutar test e2e node se necesita la version jessie, no sirve la alpine
FROM node:10.15.3

#aws cli install
RUN apk -v --update add \
        python \
        py-pip \
        groff \
        less \
        mailcap \
        && \
    pip install --upgrade awscli==1.14.5 s3cmd==2.0.1 python-magic && \
    apk -v --purge del py-pip && \
    rm /var/cache/apk/*

ENTRYPOINT ["sh", "-c", "ls"]