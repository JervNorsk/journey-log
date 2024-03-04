FROM quay.io/fedora/fedora

RUN dnf check-update || exit 0

RUN dnf install -y \
    procps \
    iputils \
    jq

RUN dnf install -y \
    openssh-clients \
    openssh-server \
    sshpass
RUN echo 'PasswordAuthentication yes' >> /etc/ssh/sshd_config
RUN echo 'PermitRootLogin yes' >> /etc/ssh/sshd_config
RUN echo -n 'root:admin' | chpasswd

RUN dnf install -y \
    python3 \
    python3-pip
RUN pip install ansible

COPY init   /srv/init

RUN /srv/init/scripts/setup-ssh.sh \
 && /srv/init/scripts/setup-sshd.sh

RUN /srv/init/scripts/setup-ansible.sh

ENTRYPOINT ["/srv/init/entrypoint.sh"]
