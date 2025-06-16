FROM quay.io/fedora/fedora:43@sha256:fff44211e0182140a32c878b465caeeaf99028f0ffa8f2ee8ecd1e4938e940be

RUN dnf install -y python3 python3-pip
RUN python3 -m pip install my_app
