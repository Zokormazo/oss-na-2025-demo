FROM quay.io/fedora/fedora:42@sha256:ef7e5acf3a8a4fc4c34af1f6e64b5028a4a7d732529809937e15e4a27e99f16d AS builder

RUN dnf install -y python3 python3-pip cargo python3-devel gcc libffi-devel openssl-devel
RUN python3 -m pip install my_app

FROM quay.io/fedora/fedora:42@sha256:ef7e5acf3a8a4fc4c34af1f6e64b5028a4a7d732529809937e15e4a27e99f16d
RUN dnf install -y python3 libffi
COPY --from=builder /usr/local/lib/python3.13/site-packages/ /usr/local/lib/python3.13/site-packages/
