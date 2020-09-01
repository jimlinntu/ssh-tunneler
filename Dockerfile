FROM ubuntu:18.04
RUN apt-get update
RUN apt-get install -y openssh-server
RUN echo 'root:thepassword' | chpasswd
# Enable PermitRootLogin to yes
RUN sed -i 's/#*PermitRootLogin prohibit-password/PermitRootLogin yes/g' /etc/ssh/sshd_config
RUN sed -i 's/#*GatewayPorts no/GatewayPorts yes/g' /etc/ssh/sshd_config
COPY ./start.sh /
CMD ["bash", "start.sh"]
