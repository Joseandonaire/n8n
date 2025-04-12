FROM n8nio/n8n:1.88.0

# Cambiar a usuario root para poder realizar instalaciones globales
USER root

# Actualizar npm para obtener la versión más reciente
RUN npm install -g npm@latest

# Eliminar npx si ya existe para evitar conflictos
RUN rm -f /usr/local/bin/npx

# Instalar npx globalmente
RUN npm install -g npx

# Instalar el paquete "supergateway" (reemplaza 'supergateway' si el paquete se llama de otra forma)
RUN npm install -g supergateway

# Regresar al usuario "node"
USER node
