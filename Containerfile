FROM quay.io/fedora/fedora:43@sha256:6d05a8b35c227076130d22c6ba62c04faef2520bd74364ce533bded5c5f2ac3b

RUN dnf install -y python3 python3-pip
RUN python3 -m pip install my_app
