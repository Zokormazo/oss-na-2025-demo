FROM quay.io/fedora/fedora:42@sha256:0ee0a0190c25b55e81c16d7c79f8beda1ce14fb269686e7e2d545cfe78202031 AS builder

RUN dnf install -y python3 python3-pip cargo python3-devel gcc libffi-devel openssl-devel
RUN python3 -m pip install my_app

FROM quay.io/fedora/fedora:42@sha256:0ee0a0190c25b55e81c16d7c79f8beda1ce14fb269686e7e2d545cfe78202031
RUN dnf install -y python3 libffi
COPY --from=builder /usr/local/lib/python3.13/site-packages/ /usr/local/lib/python3.13/site-packages/
