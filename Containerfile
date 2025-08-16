FROM quay.io/fedora/fedora:44@sha256:b775eb6b3f716b9c16197eb98e406db86a933a73a7275bd40aa8a12da278cda3 AS builder

RUN dnf install -y python3 python3-pip cargo python3-devel gcc libffi-devel openssl-devel
RUN python3 -m pip install my_app

FROM quay.io/fedora/fedora:44@sha256:b775eb6b3f716b9c16197eb98e406db86a933a73a7275bd40aa8a12da278cda3
RUN dnf install -y python3 libffi
COPY --from=builder /usr/local/lib/python3.13/site-packages/ /usr/local/lib/python3.13/site-packages/
