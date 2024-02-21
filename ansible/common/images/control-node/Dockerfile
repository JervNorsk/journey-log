FROM quay.io/fedora/fedora

RUN yum check-update || exit 0

RUN yum install -y iputils
RUN yum install -y \
    openssh-clients  \
    openssh-server

RUN echo 'PasswordAuthentication yes' >> /etc/ssh/sshd_config
RUN echo 'PermitRootLogin yes' >> /etc/ssh/sshd_config
RUN echo -n 'root:admin' | chpasswd

RUN yum install -y docker
#RUN yum install -y podman

#RUN yum install -y python python-pip
RUN yum install -y python3-pip

#RUN pip install ansible ansible-builder ansible-navigator
RUN python3 -m pip install  \
    ansible  \
    ansible-builder  \
    ansible-navigator

COPY entrypoint.sh /
ENTRYPOINT ["/entrypoint.sh"]
CMD [ "/usr/sbin/sshd", "-D", "-e"]
