FROM n8nio/n8n:1.88.0

# Configuración para Railway: utilizar el puerto 8080 y escuchar en todas las interfaces
ENV N8N_PORT=8080
ENV N8N_HOST=0.0.0.0

# Establece la URL pública de tu servicio en Railway para que los webhooks se construyan correctamente
ENV WEBHOOK_TUNNEL_URL=https://primary-production-9a03b.up.railway.app
