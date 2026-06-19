#!/bin/bash

NAME="${1}"
DOMAIN="${2}"
OUTPUT_FILE="results.csv"

# Verificar que se recibieron los dos argumentos
if [[ -z "${NAME}" ]] || [[ -z "${DOMAIN}" ]]; then
    echo "You must provide two arguments to this script."
    echo "Example: ${0} mysite nostarch.com"
    exit 1
fi

# Escribir encabezado CSV
echo "status,name,domain,timestamp" > "${OUTPUT_FILE}"

# Realizar ping y guardar resultado
if ping -c 1 "${DOMAIN}" &> /dev/null; then
    echo "success,${NAME},${DOMAIN},$(date)" >> "${OUTPUT_FILE}"
else
    echo "failure,${NAME},${DOMAIN},$(date)" >> "${OUTPUT_FILE}"
fi

# Solo para demostrar que sigue ejecutándose en segundo plano
sleep 100