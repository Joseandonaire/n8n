FROM n8nio/n8n:1.88.0

# Exponer el puerto 8080 para que Railway sepa dónde escuchar
EXPOSE 8080

# Forzar a n8n a usar el puerto 8080 en lugar del 5678
ENV N8N_PORT=8080
ENV N8N_HOST=0.0.0.0

# Railway utiliza la variable PORT en algunas ocasiones para su enrutamiento interno
ENV PORT=8080

# URL pública para que n8n construya los webhooks correctos
ENV WEBHOOK_TUNNEL_URL=https://primary-production-9a03b.up.railway.app
