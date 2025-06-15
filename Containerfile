FROM quay.io/fedora/fedora:43@sha256:1f43c494a04bfca202d2190625e0fb594ee3cb16fba3e8a9994afd7e8df6511a

RUN dnf install -y python3 python3-pip
RUN python3 -m pip install my_app
