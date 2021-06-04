# devops
Probado en Windows 10 con WSL2 Ubuntu 20.04, Docker 20.10, NodeJS 10.19

- Instalar Docker
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"
apt update
apt install docker-ce

- Instalar nodejs / npm
- Instalar Jenkins con volumen persistente y docker.sock
- Instalar sonarqube

Permisos jenkins_home
- chown -R 1000:1000 /var/jenkins_home

Configurar Jenkins
- Crear nueva tarea "Pipeline"
- Definir "Pipeline script from SCM" y SCM = "GIT"
- git clone https://github.com/vgonzalezo/devops.git
- branch main

- Instalar Docker y Docker Pipeline plugin

Ejecutar contenedores
- make start

Permisos Docker-in-Docker
- groupadd docker
- usermod -aG docker ${USER}
- sudo chmod 666 /var/run/docker.sock

Instalar angular-cli
- curl --silent --location https://deb.nodesource.com/setup_10.x  | sudo bash -
- sudo apt update && sudo apt install nodejs -y
- sudo npm install -g @angular/cli@latest
- sudo ng new app