FROM n8nio/n8n:1.88.0

# Configuración para que n8n escuche en el puerto 8080
ENV N8N_PORT=8080
ENV N8N_HOST=0.0.0.0

# Variable que muchos PaaS (como Railway) usan para redirigir el tráfico y realizar el healthcheck
ENV PORT=8080

# Define la URL pública que Railway te asigna (la usas para que se construyan correctamente los webhooks)
ENV WEBHOOK_TUNNEL_URL=https://primary-production-9a03b.up.railway.app
