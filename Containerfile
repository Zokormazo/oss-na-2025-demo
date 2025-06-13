FROM quay.io/fedora/fedora:42@sha256:862f11b58096efb2dda04f62e8a7e13e253656196739085e402a64a715106c26

RUN dnf install -y python3 python3-pip
COPY my_app my_app
RUN python3 -m pip install my_app
