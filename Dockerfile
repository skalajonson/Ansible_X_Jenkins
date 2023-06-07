FROM ubuntu:22.04

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update && apt-get install -y python3 python3-pip software-properties-common && add-apt-repository -y ppa:ansible/ansible && apt-get update && apt-get install -y ansible && ansible --version

RUN echo "[linux]" >> /etc/ansible/hosts && \
    echo "192.168.1.10" >> /etc/ansible/hosts && \
    echo "[linux:vars]" >> /etc/ansible/hosts && \
    echo "ansible_user=kaka" >> /etc/ansible/hosts && \
    echo "ansible_password=123" >> /etc/ansible/hosts && \
    echo "[defaults]" >> /etc/ansible/ansible.cfg && \
    echo "host_key_checking = False" >> /etc/ansible/ansible.cfg && \
    echo "[privilege_escalation]" >> /etc/ansible/ansible.cfg && \
    echo "become_ask_pass = True" >> /etc/ansible/ansible.cfg
