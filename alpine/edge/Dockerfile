FROM alpine:edge

LABEL maintainer="Kalle M. Aagaard docker@k-moeller.dk"

ARG S6_OVERLAY_VERSION=3.1.1.2

ARG S6_OVERLAY_NOARCH=https://github.com/just-containers/s6-overlay/releases/download/v${S6_OVERLAY_VERSION}/s6-overlay-noarch.tar.xz
ARG S6_OVERLAY_X86_64=https://github.com/just-containers/s6-overlay/releases/download/v${S6_OVERLAY_VERSION}/s6-overlay-x86_64.tar.xz

# Build and some of image configuration
RUN true \
    && mkdir -p /etc/cont-finish.d /etc/cont-init.d /etc/fix-attrs.d /etc/services.d \
    && wget -O /tmp/s6overlay.tar.xz ${S6_OVERLAY_NOARCH} \
    && tar -Jxpf /tmp/s6overlay.tar.xz -C / \
    && rm /tmp/s6overlay.tar.xz \
    && wget -O /tmp/s6overlay.tar.xz ${S6_OVERLAY_X86_64} \
    && tar -Jxpf /tmp/s6overlay.tar.xz -C / \
    && rm /tmp/s6overlay.tar.xz

# Init
ENTRYPOINT [ "/init" ]
