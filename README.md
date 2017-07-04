# docker-ansible-server-test

Basic image with:
- ansible server installed
- ansible user added
- ansible keys added
- sample ansible configuration - /etc/ansible/hosts, /etc/ansible/ansible.cfg
- ansible playbook - /root/lemp.yml
- ansible role - /etc/ansible/roles/hpierce.lemp-ubuntu
- database - /root/test_db
- php application - /root/html

1. Spin up hpierce/docker-ansible-client with port 80  
docker run -p 8080:80 -it hpierce/docker-ansible-client /bin/bash

2. Spin this up
docker run -it hpierce/docker-ansible-server-test /bin/bash

3. Change the /etc/ansible/hosts to the ip running docker-ansible-client

4. Run ansible playbook 
ansible-playbook /root/lemp.yml  

5. Open webpage: http://localhost:8080/

