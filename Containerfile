FROM quay.io/fedora/fedora:42@sha256:47a84f75a25b5059a61662ae9c95b5c899b30adfc3dba3dc25a31e30c7968449 AS builder

RUN dnf install -y python3 python3-pip cargo python3-devel gcc libffi-devel openssl-devel
RUN python3 -m pip install my_app

FROM quay.io/fedora/fedora:42@sha256:47a84f75a25b5059a61662ae9c95b5c899b30adfc3dba3dc25a31e30c7968449
RUN dnf install -y python3 libffi
COPY --from=builder /usr/local/lib/python3.13/site-packages/ /usr/local/lib/python3.13/site-packages/
