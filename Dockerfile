FROM nginx:1.30.4-alpine-slim

COPY nginx.conf /etc/nginx/conf.d/default.conf
COPY public/ /usr/share/nginx/html/

# Création du fichier PID et attribution des droits sur tous les répertoires nécessaires
RUN touch /var/run/nginx.pid && \
    chown -R 101:101 /var/cache/nginx /var/log/nginx /var/run/nginx.pid /usr/share/nginx/html

USER 101

EXPOSE 8080