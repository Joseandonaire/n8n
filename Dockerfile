FROM n8nio/n8n:1.88.0

# Cambiar a usuario root para poder instalar paquetes globalmente
USER root

# Instalar el paquete "supergateway" globalmente
RUN npm install -g supergateway

# Regresar al usuario "node" (que es el recomendado para correr n8n)
USER node

# (Aquí puedes agregar más configuraciones si las necesitas)
