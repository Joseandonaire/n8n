FROM n8nio/n8n:1.88.0

USER root
# Se quita la instalación de firewall-cxp porque no existe en npm
USER node

# La imagen oficial ya define el CMD necesario para iniciar n8n
