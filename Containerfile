FROM quay.io/fedora/fedora:44@sha256:28567ad552c49131004cc6bde7b822b35bfb53aae5c1f52cf5c2058541c005f4 AS builder

RUN dnf install -y python3 python3-pip cargo python3-devel gcc libffi-devel openssl-devel
RUN python3 -m pip install my_app

FROM quay.io/fedora/fedora:44@sha256:28567ad552c49131004cc6bde7b822b35bfb53aae5c1f52cf5c2058541c005f4
RUN dnf install -y python3 libffi
COPY --from=builder /usr/local/lib/python3.13/site-packages/ /usr/local/lib/python3.13/site-packages/
