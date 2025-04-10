# Docker Setup - Oracle Linux 8


## Add repository to yum list in order to install Docker packages
```
sudo yum-config-manager     --add-repo     https://download.docker.com/linux/centos/docker-ce.repo
```

## Install Docker 
```
sudo yum install docker-ce docker-ce-cli containerd.io docker-compose-plugin -y
```

## Docker Status
```
sudo systemctl status docker
```

## Start Docker daemon
```
sudo systemctl start docker
```

## Give permission to current user to execute docker without sudo

```
sudo usermod -aG docker $USER
```
or
```
sudo chmod 666 /var/run/docker.sock
```
then exit and login again to see changes


## Jenkins
### Descargar la Imagen de Jenkins
```
docker pull jenkins/jenkins
```

Ejecutar Jenkins en un Contenedor
```
docker run -d --name jenkins-docker -p 8080:8080 -p 50000:50000 -v /home/opc/:/var/jenkins_home/ jenkins/jenkins
```
* -d → Ejecuta el contenedor en modo background (detached).
* --name jenkins-docker → Asigna el nombre jenkins-docker al contenedor.
* -p 8080:8080 → Expone el puerto 8080 (interfaz web de Jenkins).
* -p 50000:50000 → Expone el puerto 50000 (para conexiones de agentes remotos).
* -v /home/opc/:/var/jenkins_home/ → Monta el directorio /home/opc/ en el host como /var/jenkins_home/ dentro del contenedor (para persistencia de datos).

Obtener la Contraseña de Administrador Inicial
```
docker exec -it jenkins-docker cat /var/jenkins_home/secrets/initialAdminPassword
```

## Grafana
### Descargar la Imagen de Grafana
```
docker pull grafana/grafana-enterprise
```

Ejecutar Grafana en un Contenedor
```
docker run -d -p 3000:3000 --name=grafana -v /home/opc/workspace/grafana-data/:/var/lib/grafana grafana/grafana-enterprise
```
