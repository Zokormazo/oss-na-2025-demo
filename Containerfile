FROM quay.io/fedora/fedora:42@sha256:205f61cebc55c540231d4d6d854749216ef709359ca739f421c8da7ee529661b

RUN dnf install -y python3 python3-pip
RUN python3 -m pip install my_app
