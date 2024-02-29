FROM quay.io/fedora/fedora

RUN dnf check-update || exit 0

RUN dnf install -y \
    procps \
    iputils

RUN dnf install -y \
    openssh-clients  \
    openssh-server
RUN echo 'PasswordAuthentication yes' >> /etc/ssh/sshd_config
RUN echo 'PermitRootLogin yes' >> /etc/ssh/sshd_config
RUN echo -n 'root:admin' | chpasswd

RUN dnf install -y python3

COPY entrypoint.sh /
ENTRYPOINT ["/sbin/init"]
#ENTRYPOINT ["/entrypoint.sh"]
CMD [ "/usr/sbin/sshd", "-D", "-e"]
#CMD [ "/sbin/init"]
