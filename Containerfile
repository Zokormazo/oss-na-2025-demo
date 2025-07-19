FROM quay.io/fedora/fedora:42@sha256:e46630003cae8c0017cdaab33f2edfe92049cc8111e9a9174b82e4c00cb2f710 AS builder

RUN dnf install -y python3 python3-pip cargo python3-devel gcc libffi-devel openssl-devel
RUN python3 -m pip install my_app

FROM quay.io/fedora/fedora:42@sha256:e46630003cae8c0017cdaab33f2edfe92049cc8111e9a9174b82e4c00cb2f710
RUN dnf install -y python3 libffi
COPY --from=builder /usr/local/lib/python3.13/site-packages/ /usr/local/lib/python3.13/site-packages/
