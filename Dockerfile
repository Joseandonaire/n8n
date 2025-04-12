FROM n8nio/n8n:1.88.0

# Cambiar a usuario root para poder instalar paquetes globales
USER root

# Actualizar npm (para asegurarnos de que 'npx' venga correcto)
RUN npm install -g npm@latest

# Instalar 'npx' globalmente (por si la versión de npm en la imagen no lo trae)
RUN npm install -g npx

# (Opcional) Instalar aquí cualquier paquete que provea el comando que uses
# Supongamos que el binario se llama 'supergateway' y se instala con:
RUN npm install -g supergateway

# Regresar a usuario node (recomendado por seguridad)
USER node
