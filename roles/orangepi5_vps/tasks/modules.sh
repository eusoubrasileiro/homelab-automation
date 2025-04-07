# to run on portainer volume n8n_data

mkdir -p /home/node/.n8n/nodes
cd /home/node/.n8n/nodes


npm install \
  moment \
  lodash \
  axios \
  n8n-nodes-vtiger-crm \
  n8n-nodes-evolution-api \
  n8n-nodes-cnpj \
  n8n-nodes-elevenlabs \
  n8n-nodes-firecrawl-v1 \
  n8n-nodes-globals \
  @devlikeapro/n8n-nodes-chatwoot
