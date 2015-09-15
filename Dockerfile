FROM ubuntu

RUN apt-get update && apt-get install -y openssh-server
ADD sshd_config /etc/ssh/sshd_config
RUN mkdir /var/run/sshd
RUN chmod 0755 /var/run/sshd
ADD key/generated.pub /root/.ssh/authorized_keys
RUN chmod -R go-r /root/.ssh

CMD env >> /etc/environment && echo "Running" && /usr/sbin/sshd -D