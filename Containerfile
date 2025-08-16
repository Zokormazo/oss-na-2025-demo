FROM quay.io/fedora/fedora:42@sha256:e75875ac4b0a664958568cc46daa090d8f784ef01e58d7e2d4f5d2d665bddf93 AS builder

RUN dnf install -y python3 python3-pip cargo python3-devel gcc libffi-devel openssl-devel
RUN python3 -m pip install my_app

FROM quay.io/fedora/fedora:42@sha256:e75875ac4b0a664958568cc46daa090d8f784ef01e58d7e2d4f5d2d665bddf93
RUN dnf install -y python3 libffi
COPY --from=builder /usr/local/lib/python3.13/site-packages/ /usr/local/lib/python3.13/site-packages/
