FROM osixia/openldap:latest
COPY ./ldap-config/ /container/service/slapd/assets/config/bootstrap/ldif/custom/

ENV LDAP_DOMAIN="127.0.0.1"
ENV LDAP_ORGANISATION="Restaurante Ejemplo"
ENV LDAP_ADMIN_PASSWORD="123"

EXPOSE 389 636