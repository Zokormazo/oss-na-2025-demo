FROM quay.io/fedora/fedora:44@sha256:7e7d843b0951f59bda2c884952a89f40c64c12a87f57d91e2c1d98d0a15841c9 AS builder

RUN dnf install -y python3 python3-pip cargo python3-devel gcc libffi-devel openssl-devel
RUN python3 -m pip install my_app

FROM quay.io/fedora/fedora:44@sha256:7e7d843b0951f59bda2c884952a89f40c64c12a87f57d91e2c1d98d0a15841c9
RUN dnf install -y python3 libffi
COPY --from=builder /usr/local/lib/python3.13/site-packages/ /usr/local/lib/python3.13/site-packages/
