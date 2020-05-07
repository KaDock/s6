FROM alpine:latest AS s6-alpine
LABEL maintainer="Kalle M. Aagaard docker@k-moeller.dk"

ARG S6_OVERLAY_RELEASE=https://github.com/just-containers/s6-overlay/releases/latest/download/s6-overlay-amd64.tar.gz
ENV S6_OVERLAY_RELEASE=${S6_OVERLAY_RELEASE}

# Build and some of image configuration
RUN true \
    && mkdir -p /etc/cont-finish.d /etc/cont-init.d /etc/fix-attrs.d /etc/services.d \
    && wget -O /tmp/s6overlay.tar.gz ${S6_OVERLAY_RELEASE} \
    && tar xzf /tmp/s6overlay.tar.gz -C / \
    && rm /tmp/s6overlay.tar.gz

# Init
ENTRYPOINT [ "/init" ]
