FROM n8nio/n8n:1.88.0

# Configuración para que n8n escuche en el puerto 8080
ENV N8N_PORT=8080
ENV N8N_HOST=0.0.0.0

# Variable que usan PaaS (como Railway) para enrutar el tráfico y realizar el healthcheck
ENV PORT=8080

# Establece la URL pública (la que usas para acceder a n8n)
ENV WEBHOOK_TUNNEL_URL=https://primary-production-9a03b.up.railway.app

# Healthcheck personalizado: Railway comprobará /healthz en el puerto 8080
HEALTHCHECK --interval=30s --timeout=10s --start-period=30s --retries=3 \
  CMD curl -f http://localhost:8080/healthz || exit 1
