FROM alpine:latest

RUN apk add --update --no-cache openssh
RUN echo 'PasswordAuthentication no' >> /etc/ssh/sshd_config
RUN echo 'PermitRootLogin yes' >> /etc/ssh/sshd_config

#RUN adduser -h /home/admin -s /bin/sh -D admin
#RUN echo -n 'admin:admin' | chpasswd
#RUN echo -n 'root:admin' | chpasswd

RUN apk add --update --no-cache python3

EXPOSE 22

COPY entrypoint.sh /
ENTRYPOINT ["/entrypoint.sh"]
CMD [ "/usr/sbin/sshd", "-D", "-e"]
