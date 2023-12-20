FROM alpine:edge

LABEL maintainer="Kalle M. Aagaard docker@k-moeller.dk"

ARG S6_OVERLAY_RELEASE_AMD=https://github.com/just-containers/s6-overlay/releases/latest/download/s6-overlay-x86_64.tar.xz
ARG S6_OVERLAY_RELEASE=https://github.com/just-containers/s6-overlay/releases/latest/download/s6-overlay-noarch.tar.xz

# Build and some of image configuration
RUN true \
    && mkdir -p /etc/cont-finish.d /etc/cont-init.d /etc/fix-attrs.d /etc/services.d \
    && wget -O /tmp/s6overlay_amd.tar.xz ${S6_OVERLAY_RELEASE_AMD} \
    && tar xJf /tmp/s6overlay_amd.tar.xz -C / \
    && rm /tmp/s6overlay_amd.tar.xz \
    && wget -O /tmp/s6overlay_amd.tar.xz ${S6_OVERLAY_RELEASE} \
    && tar xJf /tmp/s6overlay_amd.tar.xz -C / \
    && rm /tmp/s6overlay_amd.tar.xz

# Init
ENTRYPOINT [ "/init" ]
