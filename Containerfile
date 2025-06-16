FROM quay.io/fedora/fedora:42@sha256:fe2ec6a3fb96a1890d9dd4f72261a8a4f34ea506aa55e7c8c22fa2da58e5f493 AS builder

RUN dnf install -y python3 python3-pip cargo python3-devel gcc libffi-devel openssl-devel
RUN python3 -m pip install my_app

FROM quay.io/fedora/fedora:42@sha256:fe2ec6a3fb96a1890d9dd4f72261a8a4f34ea506aa55e7c8c22fa2da58e5f493
RUN dnf install -y python3 libffi
COPY --from=builder /usr/local/lib/python3.13/site-packages/ /usr/local/lib/python3.13/site-packages/
