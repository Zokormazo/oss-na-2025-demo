FROM quay.io/fedora/fedora:42@sha256:4e2ac5a754dc80babb40100857d27a028f7cbb077bf0a7e4cc66c2533c37c6a2

RUN dnf install -y python3 python3-pip
COPY my_app my_app
RUN python3 -m pip install my_app
