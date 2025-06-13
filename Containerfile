FROM quay.io/fedora/fedora:42@sha256:68779a51b655f6bfeef08429fe31c33508f6a0d6beaf5660de094d49948a8e37

RUN dnf install -y python3 python3-pip
COPY my_app my_app
RUN python3 -m pip install my_app
