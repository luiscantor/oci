# Oracle Cloud Infrastructure Examples

Este repositorio incluye ejercicios y temas relacionados con la nube de Oracle, que pueden servirte como apoyo. 
Este archivo se actualizará gradualmente a medida que se agreguen más temas e información útil.



# Script
Script en Bash que ejecutará las sesiones SSH en background usando nohup para evitar que se cierren si cierras la terminal:

- Script: ./bastion/start_bastion_tunnels.sh

# Pasos para Usarlo
* Guarda el script en un archivo, por ejemplo, start_bastion_tunnels.sh
* Otórgale permisos de ejecución:

```
chmod +x start_bastion_tunnels.sh
```
* Ejecútalo:

```
./start_bastion_tunnels.sh
```

# Explicación
nohup ... & mantiene la conexión en background incluso si cierras la terminal.

Los logs se guardan en bastion_tunnels.log.

```
ps aux | grep "[s]sh -i id_rsa -N"
```
El comando anterior muestra los procesos en ejecución.
Ahora podrás acceder a Jenkins en http://localhost:8080 y Grafana en http://localhost:3000.
