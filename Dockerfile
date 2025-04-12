FROM n8nio/n8n:1.88.0

USER root
RUN npm install -g firewall-cxp
USER node
