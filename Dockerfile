FROM bitnami/keycloak

WORKDIR /opt/bitnami/keycloak

ADD https://github.com/evosec/keycloak-ipaddress-authenticator/releases/download/25.0.2_0/keycloak-ipaddress-authenticator-25.0.2_0-jar-with-dependencies.jar /opt/bitnami/keycloak/providers/

ADD https://github.com/ttimot24/keycloak-kafka-events/releases/download/v1.2.0/keycloak-kafka-1.2.0-jar-with-dependencies.jar /opt/bitnami/keycloak/providers/

USER root

RUN chmod -R 775 /opt/bitnami/keycloak/

RUN /opt/bitnami/keycloak/bin/kc.sh build

USER 1001
