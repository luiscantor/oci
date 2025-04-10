# Oracle Cloud Infrastructure Examples
Este repositorio contiene ejercicios y temas relacionados con Oracle Cloud Infrastructure (OCI), diseñados para ayudarte a comprender y aplicar diferentes configuraciones en la nube. Se actualizará periódicamente con nuevos temas y recursos.

## Estructura del Repositorio
* Instancia Publica/ – Configuración y despliegue de instancias accesibles desde internet en OCI.
* Instancia Privada/ – Creación y administración de instancias privadas dentro de una VCN.
* Bastion/ – Uso de un Bastion Host para acceder de manera segura a instancias privadas.

## Script para Túneles SSH en Bastion
Este repositorio incluye un script en Bash que establece sesiones SSH en background usando nohup, lo que permite mantener la conexión activa incluso si la terminal se cierra.

### Ubicación del Script
```
./bastion/start_bastion_tunnels.sh
```

### Cómo Usarlo
1. Otorgar permisos de ejecución:

```
chmod +x ./bastion/start_bastion_tunnels.sh
```
2. Ejecutar el script:

```
./start_bastion_tunnels.sh
```

### Explicación
* nohup ... & mantiene la conexión activa en background, incluso si cierras la terminal.
* Los logs se almacenan en bastion_tunnels.log.
* Puedes verificar los procesos en ejecución con:

  ```
  ps aux | grep "[s]sh -i id_rsa -N"
  ```
* Acceso a servicios:

  * Jenkins: http://localhost:8080
  * Grafana: http://localhost:3000
