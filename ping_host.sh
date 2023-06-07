docker run -i chikibevchik/ansible:latest

echo [linux]
linux ansible_host=192.168.1.16 >> /etc/ansible/hosts

ansible linux -m ping 
