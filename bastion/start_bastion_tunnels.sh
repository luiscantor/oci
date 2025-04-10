#!/bin/bash

# Directorio del script
SCRIPT_DIR=$(dirname "$0")

# Archivo de log
LOG_FILE="$SCRIPT_DIR/bastion_tunnels.log"

# SSH para Jenkins
nohup ssh -i ~/.ssh/personal/id_rsa -N -L 8080:10.0.2.110:8080 -p 22 \
    <bastionsession_1_ocid>@host.bastion.<region>.oci.oraclecloud.com \
    >> "$LOG_FILE" 2>&1 &

echo "Jenkins tunnel started and running in background."

# SSH para Grafana
nohup ssh -i ~/.ssh/personal/id_rsa -N -L 3000:10.0.2.110:3000 -p 22 \
    <bastionsession_2_ocid>@host.bastion.<region>.oci.oraclecloud.com \
    >> "$LOG_FILE" 2>&1 &

echo "Grafana tunnel started and running in background."

# Mostrar procesos en ejecución
sleep 1
ps aux | grep "[s]sh -i id_rsa -N"
