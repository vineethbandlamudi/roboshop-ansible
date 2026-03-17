default:
    git pull
    ansible-playbook -i $(componet_name)-dev.vdevops.online -e ansible_username=azuser -e ansible_password=DevOps@123456 -e component_name=$(component_name) roboshop.yml

all:
    git pull
    make component_name=frontend
    make component_name=mongodb
    make component_name=redis
    make component_name=mysql
    make component_name=rabbitmq
    make component_name=catalogue
    make component_name=user
    make component_name=cart
    make component_name=shipping
    make component_name=  payment