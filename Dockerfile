FROM certbot/dns-ovh:latest
COPY certbot-config/ovh.credentials /etc/letsencrypt/ovh.credentials
RUN chmod 600 /etc/letsencrypt/ovh.credentials