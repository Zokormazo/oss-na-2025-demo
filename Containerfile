FROM quay.io/fedora/fedora:42@sha256:aae24e1c1e3e7d91f1f19d7081bf56e9e3447427d47e406dd5db63556cab2bd7

RUN dnf install -y python3 python3-pip
RUN python3 -m pip install my_app
